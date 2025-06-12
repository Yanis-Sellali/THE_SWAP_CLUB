class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show]

  def show
    @user = User.find_by(id: params[:id])

    if @user.nil?
      redirect_to root_path, alert: "Utilisateur non trouvé."
    else
      @jerseys = @user.jerseys
      @jerseys_number = @user.jerseys.count
      @exchanges = @user.exchanges
    end
  end
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "Profil mis à jour avec succès."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def index
    @users = User.all
  end

  private
  def user_params
    params.require(:user).permit(:nom, :localisation)
  end
end
