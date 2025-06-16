class TradesController < ApplicationController
  before_action :authenticate_user!

  def recap
    @message = Message.find(params[:id])
    @exchange = @message.chat.exchange
    @sender = @exchange.sender
    @receiver = @exchange.receiver
    @sender_jersey = @exchange.sender_jersey
    @receiver_jersey = @exchange.receiver_jersey
  end
end
