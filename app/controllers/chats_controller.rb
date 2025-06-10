class ChatsController < ApplicationController
  before_action :authenticate_user!

  def show
    @exchange = Exchange.find(params[:id])
    @chat = @exchange.chat
    @messages = @chat.messages.includes(:user)
    @message = Message.new
  end
end
