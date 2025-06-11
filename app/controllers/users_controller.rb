class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:index, :show]

  def show
  @user = User.find(params[:id])
  @jerseys_number = @user.jerseys.count
    #@exchanges = @user.exchanges
  end

  def index
    @users = User.all
  end
  
end
