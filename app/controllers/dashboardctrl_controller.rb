class DashboardctrlController < ApplicationController
  def index
    @workers = Worker.all
    @proyects = Proyect.all
  end
  def show

  end
  def create
  
  end
end
