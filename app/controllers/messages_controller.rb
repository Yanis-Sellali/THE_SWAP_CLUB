class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @exchange = Exchange.find(params[:exchange_id])
    @chat = @exchange.chat
    @message = @chat.messages.build(message_params)
    @message.user = current_user

    if @message.save
      if @chat.messages.count == 10 && @chat.messages.none?(&:trade_offer?)
        Message.create!(
          chat: @chat,
          message_type: :trade_offer,
          offer_jersey_user1: @exchange.sender_jersey,
          offer_jersey_user2: @exchange.receiver_jersey,
          user1_accepted: false,
          user2_accepted: false
        )
      end
      redirect_to exchange_chat_path(@exchange, @chat), notice: "Message envoyé."
    else
      redirect_to exchange_chat_path(@exchange, @chat), alert: "Erreur lors de l'envoi du message."
    end
  end

  def accept_offer
    message = Message.find(params[:id])
    message.mark_as_accepted_by(current_user)

    if message.both_accepted?
      Message.create!(
        chat: message.chat,
        user: nil,
        message_type: "system",
        content: "✅ Vous avez tous les deux accepté l’échange ! Vous pouvez maintenant discuter ici pour fixer un lieu de rendez-vous et échanger vos coordonnées. Cliquez ensuite sur “Finaliser l’échange”."
      )
    end

    redirect_to exchange_chat_path(message.chat.exchange, message.chat)
  end

  def decline_offer
    message = Message.find(params[:id])
    message.destroy
    redirect_to exchange_chat_path(message.chat.exchange, message.chat), alert: "❌ Échange refusé."
  end

  def finalize_offer
    message = Message.find(params[:id])
    message.mark_as_finalized_by(current_user)

    if message.both_finalized?
      redirect_to recap_trade_path(message)
    else
      redirect_to exchange_chat_path(message.chat.exchange, message.chat), notice: "🕓 En attente de la finalisation de l’autre utilisateur."
    end
    
  def index
    @exchange = Exchange.find(params[:exchange_id])
    @chat = @exchange.chat
    @messages = @chat.messages.order(created_at: :asc)

    render partial: 'messages/messages', locals: { messages: @messages }
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
