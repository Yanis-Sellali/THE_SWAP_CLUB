class ExchangesController < ApplicationController
  def index
    @exchanges = Exchange.where(status: "pending").includes(:sender, :receiver, :sender_jersey, :receiver_jersey)
  end

  def show
    @exchange = Exchange.find(params[:id])
  end

  def new
    @exchange = Exchange.new
    @user_jerseys = Jersey.where(user: current_user)
    @available_jerseys = Jersey.where.not(user: current_user)
  end

def create
  @exchange = Exchange.new(exchange_params)
  @exchange.owner = current_user
  @exchange.sender = current_user

  receiver_jersey = Jersey.find_by(id: exchange_params[:receiver_jersey_id])

  if receiver_jersey.nil?
    redirect_to new_exchange_path, alert: "Le maillot sélectionné n'existe pas."
    return
  end

  @exchange.receiver = receiver_jersey.user
  @exchange.status ||= "pending"

  if @exchange.sender.nil? || @exchange.receiver.nil?
    redirect_to new_exchange_path, alert: "L’échange est invalide."
    return
  end

  if @exchange.save
    redirect_to exchanges_path, notice: "Échange créé avec succès."
  else
    render :new, status: :unprocessable_entity
  end
end


def accept
  @exchange = Exchange.find(params[:id])

  @exchange.receiver_jersey.update(user: @exchange.sender)
  @exchange.sender_jersey.update(user: @exchange.receiver)

  @exchange.update(status: "accepted")

  redirect_to exchanges_path, notice: "Échange accepté et maillots transférés !"
end


  def refuse
    @exchange = Exchange.find(params[:id])
    @exchange.update(status: "refused")
    redirect_to exchanges_path, alert: "Échange refusé."
  end

  private

  def exchange_params
    params.require(:exchange).permit(:sender_jersey_id, :receiver_jersey_id, :owner_id)
  end
end
