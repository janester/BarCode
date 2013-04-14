class AvailabilitiesController < ApplicationController
  def edit
    @availability = Availability.find(params[:id])
  end

  def update
    availability = Availability.find(params[:id])
    availability.update_attributes(params[:availability])
    availability.save
  end

  def destroy
    Availability.delete(params[:id])
  end
end