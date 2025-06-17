class JerseysController < ApplicationController
  def index
    @teams = Team.order(:name)
    @sizes = Jersey.distinct.pluck(:size).compact
    @years = Jersey.distinct.pluck(:year).compact.sort.reverse

    @jerseys = Jersey.all
    @jerseys = @jerseys.where(team_id: params[:team_id]) if params[:team_id].present?
    @jerseys = @jerseys.where(size: params[:size]) if params[:size].present?
    @jerseys = @jerseys.where(year: params[:year]) if params[:year].present?

    respond_to do |format|
      format.html
      format.turbo_stream do
        render turbo_stream: [
          turbo_stream.replace("jersey_grid", partial: "jerseys/grid", locals: { jerseys: @jerseys }),
          turbo_stream.replace("jersey_count", partial: "jerseys/count", locals: {
            count: @jerseys.count,
            team: params[:team_id].presence && Team.find_by(id: params[:team_id]),
            size: params[:size],
            year: params[:year]
          })
        ]
      end
    end
  end

  def show
    @jersey = Jersey.find(params[:id])
  end

  def new
    @jersey = Jersey.new
  end

  def create
    @jersey = Jersey.new(jersey_params)
    @jersey.user = current_user
    if @jersey.save
      redirect_to @jersey
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @jersey = Jersey.find(params[:id])
  end

  def update
    @jersey = Jersey.find(params[:id])
    if @jersey.update(jersey_params)
      redirect_to user_path(current_user), notice: "Maillot mis à jour avec succès."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @jersey = Jersey.find(params[:id])
    @jersey.destroy
    redirect_to jerseys_path
  end

  private

  def jersey_params
    params.require(:jersey).permit(:name, :flocking, :year, :description, :image, :team_id, :size, :condition)
  end
end
