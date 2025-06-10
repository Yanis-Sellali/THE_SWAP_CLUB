class PagesController < ApplicationController
  def home
   @jerseys = Jersey.all
   @teams = Team.all
  end
end
