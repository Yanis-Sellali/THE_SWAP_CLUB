class ChatsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_exchange

  def show
    @chat = @exchange.chat || @exchange.create_chat
    @message = Message.new
    @messages = @chat.messages.includes(:user).order(:created_at)

    unread_messages = @messages.where.not(user: current_user).where(read: [nil, false])
    unread_messages.update_all(read: true) if unread_messages.exists?

    @other_user = @exchange.sender == current_user ? @exchange.receiver : @exchange.sender
  end

  def propose_swap
    @chat = @exchange.chat || @exchange.create_chat

    unless @chat.messages.any?(&:trade_offer?)
      Message.create!(
        chat: @chat,
        user: current_user,
        message_type: :trade_offer,
        offer_jersey_user1: @exchange.sender_jersey,
        offer_jersey_user2: @exchange.receiver_jersey,
        user1_accepted: false,
        user2_accepted: false
      )
    end

    redirect_to exchange_chat_path(@exchange)
  end

  private

  def set_exchange
    @exchange = Exchange.find_by(id: params[:exchange_id])
    redirect_to root_path, alert: "Échange introuvable." if @exchange.nil?
  end
end
