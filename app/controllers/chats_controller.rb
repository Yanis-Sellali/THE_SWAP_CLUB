class ChatsController < ApplicationController
  before_action :authenticate_user!

  def show
    @exchange = Exchange.find(params[:exchange_id])
    @chat = @exchange.chat

    @messages = @chat.messages.includes(:user).order(created_at: :asc)
    @message = Message.new

    @other_user = (@exchange.sender == current_user) ? @exchange.receiver : @exchange.sender

    @chat.messages
         .where(user: @other_user, read: false)
         .update_all(read: true)
  end
end
