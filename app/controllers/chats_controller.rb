class ChatsController < ApplicationController
  before_action :authenticate_user!

  def show
    @exchange = Exchange.find(params[:exchange_id])
    @chat = @exchange.chat

    @messages = @chat.messages.includes(:user).order(created_at: :asc)
    @message = Message.new

    @messages.where.not(user: current_user).where(read: [nil, false]).update_all(read: true)

    if @messages.count >= 10 && @messages.none?(&:trade_offer?)
      Message.create!(
        chat: @chat,
        user: current_user,
        message_type: :trade_offer,
        offer_jersey_user1: @exchange.sender_jersey,
        offer_jersey_user2: @exchange.receiver_jersey
      )

      @messages = @chat.messages.includes(:user)
    end
    
    @other_user = (@exchange.sender == current_user) ? @exchange.receiver : @exchange.sender

    @chat.messages
         .where(user: @other_user, read: false)
         .update_all(read: true)
  end
end
