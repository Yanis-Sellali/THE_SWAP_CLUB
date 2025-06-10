class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:index, :show]

  def show
    @users = User.find(params[:id])
    @jerseys = @user.jerseys
    @exchanges = @user.exchanges
  end

  def index
    @users = User.all
  end
end
