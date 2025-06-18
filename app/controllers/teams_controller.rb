class TeamsController < ApplicationController
  before_action :set_team, only: [:show]

  def index
  @teams = Team.all.uniq { |team| team.name }.first(10)
  end

  def show
    @team = Team.find(params[:id])
    @jerseys = @team.jerseys

    # Filtres dynamiques
    @jerseys = @jerseys.where(size: params[:size]) if params[:size].present?
    @jerseys = @jerseys.where(year: params[:year]) if params[:year].present?

    # Options pour le formulaire
    @sizes = @team.jerseys.pluck(:size).uniq.compact
    @years = @team.jerseys.pluck(:year).uniq.compact
  end


  private

  def set_team
    @team = Team.find(params[:id])
  end
end
