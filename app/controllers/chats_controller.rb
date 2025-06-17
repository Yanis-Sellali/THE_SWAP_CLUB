class ChatsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_exchange

  def show
    @chat = @exchange.chat || @exchange.create_chat
    @message = Message.new
    @messages = @chat.messages.includes(:user).order(:created_at)

    @messages.where.not(user: current_user).where(read: [nil, false]).update_all(read: true)

    @other_user = @exchange.sender == current_user ? @exchange.receiver : @exchange.sender

    if @messages.count == 10 && @messages.none?(&:trade_offer?)
      Message.create!(
        chat: @chat,
        user: current_user,
        message_type: :trade_offer,
        offer_jersey_user1: @exchange.sender_jersey,
        offer_jersey_user2: @exchange.receiver_jersey,
        user1_accepted: false,
        user2_accepted: false
      )
      @messages = @chat.messages.includes(:user).order(:created_at)
    end
  end

  private

  def set_exchange
    @exchange = Exchange.find_by(id: params[:exchange_id])
    redirect_to root_path, alert: "Échange introuvable." if @exchange.nil?
  end
end
