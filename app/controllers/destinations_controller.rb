class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(params[:destination])
    if @destination.save
      flash[:notice] = "Destination has been created."
      redirect_to @destination
    else
      flash[:alert] = "Destination has not been created."
      render :action => "new"
    end
  end

  def show
    @destination = Destination.find(params[:id])
  end

end
