class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:index, :show]

  def show
    @user = User.find_by(id: params[:id]) 
  if@user.nil?
    redirect_to root_path, alert: "Utilisateur non trouvé."
  else
    @jerseys = @user.jerseys
    @exchanges = @user.exchanges
  end

  end

  def index
    @users = User.all
  end
end
