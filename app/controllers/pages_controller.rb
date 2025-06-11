class PagesController < ApplicationController
 def home
  @jerseys = Jersey.all
  @teams = Team.limit(10)
 end
end
