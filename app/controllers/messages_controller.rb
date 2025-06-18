class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @exchange = Exchange.find(params[:exchange_id])
    @chat = @exchange.chat
    @messages = @chat.messages.order(created_at: :asc)

    render partial: 'messages/messages', locals: { messages: @messages }
  end

  def create
    @exchange = Exchange.find(params[:exchange_id])
    @chat = @exchange.chat
    @message = @chat.messages.build(message_params.merge(user: current_user))

    if @message.save

      if @chat.messages.count == 10 && @chat.messages.none?(&:trade_offer?)
        Message.create!(
          chat: @chat,
          user: current_user,
          message_type: :trade_offer,
          offer_jersey_user1: @exchange.sender_jersey,
          offer_jersey_user2: @exchange.receiver_jersey,
          user1_accepted: false,
          user2_accepted: false,
          user1_finalized: false,
          user2_finalized: false
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
        user: current_user,
        message_type: "system",
        content: "✅ Vous avez tous les deux accepté l’échange ! Discutez ici pour fixer un lieu et échanger vos coordonnées. Quand vous êtes prêts, cliquez sur “Finaliser l’échange”."
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
      exchange = message.chat.exchange

      exchange.receiver_jersey.update(user: exchange.sender)
      exchange.sender_jersey.update(user: exchange.receiver)

      exchange.update(status: "accepted")

      redirect_to recap_trade_path(message), notice: "✅ Échange finalisé et maillots transférés !"
    else
      redirect_to exchange_chat_path(message.chat.exchange, message.chat), notice: "🕓 En attente de la finalisation de l’autre utilisateur."
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
