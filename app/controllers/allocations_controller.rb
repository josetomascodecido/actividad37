class AllocationsController < ApplicationController
  def create
    @worker = Worker.find(params[:worker_id])
    @proyect = Proyect.find(params[:proyect_id])
    @allocation = Allocation.new(worker_id: @worker.id , proyect_id: @proyect.id)
    @comprobation = Allocation.find_by(worker_id: @worker.id, proyect_id: @proyect.id)
    if @comprobation.nil?
      @allocation.save
      redirect_to worker_path(@worker)
    else
      redirect_to worker_path(@worker), alert: "no hemos podido ingresar lo solicitado"
    end
  end
  def destroy
    @worker = Worker.find(params[:worker_id])
    @proyect = Proyect.find(params[:proyect_id])
    @allocation = Allocation.find_by(worker_id: @worker.id, proyect_id: @proyect.id)
    @allocation.destroy
    redirect_to worker_path(@worker)
  end

end
