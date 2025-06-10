class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @chat = Chat.find(params[:id])
    @message = @chat.message.build(message_params)
    @message.user = current_user

    if @message.save
      redirect_to chat_path(@chat.exchange), notice: "Message envoyé."
    else
      redirect_to chat_path(@chat.exchange), alert: "Erreur lors de l'envoie du message."
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
