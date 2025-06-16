class MessagesController < ApplicationController
  before_action :authenticate_user!

def create
  @exchange = Exchange.find(params[:exchange_id])
  @chat = @exchange.chat
  @message = @chat.messages.build(message_params)
  @message.user = current_user

  if @message.save
    redirect_to exchange_chat_path(@exchange), notice: "Message envoyé."
  else
    redirect_to exchange_chat_path(@exchange), alert: "Erreur lors de l'envoi du message."
  end
end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
