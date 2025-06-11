class JerseysController < ApplicationController
  def index
    @jerseys = Jersey.all
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
      redirect_to @jersey
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
