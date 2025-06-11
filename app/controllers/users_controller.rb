class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:index, :show]

  def show
    @user = User.find_by(id: params[:id]) # `find_by` évite une erreur fatale si l'utilisateur n'existe pas.
  if@user.nil?
    redirect_to root_path, alert: "Utilisateur non trouvé." # Redirige si aucun utilisateur n'est trouvé.
  else
    @jerseys = @user.jerseys
    @exchanges = @user.exchanges
  end

  end

  def index
    @users = User.all
  end
end
