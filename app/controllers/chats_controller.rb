class ChatsController < ApplicationController
  before_action :authenticate_user!

  def show
    @exchange = Exchange.find(params[:exchange_id])
    @chat = @exchange.chat || @exchange.create_chat
    @messages = @chat.messages.includes(:user)
    @message = Message.new

    @messages.where.not(user: current_user).where(read: [nil, false]).update_all(read: true)
  end
end
