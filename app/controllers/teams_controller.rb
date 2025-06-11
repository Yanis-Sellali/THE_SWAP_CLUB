class TeamsController < ApplicationController
  before_action :set_team, only: [:show]

  def index
    @teams = Team.all.order(:name)
  end

  def show
    @team
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end
end
