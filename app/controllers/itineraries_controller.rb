class ItinerariesController < ApplicationController

  before_filter :find_destination
  before_filter :find_itinerary, :only => [:show, :edit, :update, :destroy]

  def new
    @itinerary = @destination.itineraries.build
  end

  def create
    @itinerary = @destination.itineraries.build(params[:itinerary])
    if @itinerary.save
      flash[:notice] = "Itinerary has been created."
      redirect_to [@destination, @itinerary]
    else
      flash[:alert] = "Itinerary has not been created."
      render :action => "new"
    end
  end

  def show

  end

  def edit

  end

  def update
    if @itinerary.update_attributes(params[:itinerary])
      flash[:notice] = "Itinerary has been updated."
      redirect_to [@destination, @itinerary]
    else
      flash[:alert] = "Itinerary has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @itinerary.destroy
    flash[:notice] = "Itinerary has been deleted."
    redirect_to @destination
  end


  private
    def find_destination
      @destination = Destination.find(params[:destination_id])
    end

    def find_itinerary
      @itinerary = @destination.itineraries.find(params[:id])
    end
end
