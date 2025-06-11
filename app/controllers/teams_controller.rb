class TeamsController < ApplicationController
  before_action :set_team, only: [:show]

  def index
    @teams = Team.all
  end

  def show
     @team = Team.find(params[:id])
    @jerseys = @team.jerseys
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end
end
