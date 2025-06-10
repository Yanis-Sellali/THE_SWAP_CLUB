class ExchangesController < ApplicationController
  def index
    @exchanges = Exchange.all.includes(:owner, :jersey)
  end

  def show
    @exchange = Exchange.find(params[:id])
  end

  def new
    @exchange = Exchange.new
  end

  def create
    @exchange = Exchange.new(exchange_params)
    @exchange.owner = current_user

    if @exchange.save
      redirect_to @exchange, notice: "Echange creer avec succès"
    else
      render :new, status: :unprocessable_entity
  end
end

  private

  def exchange_params
  params.require(:exchange).permit(:jersey_id)
  end
end
