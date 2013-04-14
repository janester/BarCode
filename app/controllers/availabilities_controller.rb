class AvailabilitiesController < ApplicationController
  def edit
    @availability = Availability.find(params[:id])
  end

  def update
    availability = Availability.find(params[:id])
    availability.update_attributes(params[:availability])
    availability.save
    @venue = availability.venue
  end

  def destroy
    @venue = Availability.find(params[:id]).venue
    Availability.delete(params[:id])
  end
end