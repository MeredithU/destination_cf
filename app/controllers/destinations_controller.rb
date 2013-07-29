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

  def edit
    @destination = Destination.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:id])
    if @destination.update_attributes(params[:destination])
      flash[:notice] = "Destination has been updated."
      redirect_to @destination
    else
      flash[:alert] = "Destination has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    flash[:notice] = "Destination has been deleted."
    redirect_to destinations_path
  end

end
