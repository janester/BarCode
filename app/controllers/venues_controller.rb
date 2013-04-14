class VenuesController < ApplicationController
  def new
    @venue = Venue.new
  end

  def create
    @cu.venues << Venue.create(params[:venue])
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    venue = Venue.find(params[:id])
    venue.update_attributes(params[:venue])
    venue.save
  end

  def destroy
    Venue.delete(params[:id])
  end

  def new_availabilities
    @venue = Venue.find(params[:id])
  end

  def create_availabilities
    dates = params[:dates].split(",")
    venue = Venue.find(params[:id])
    dates.each do |date|
      unless venue.availabilities.map(&:date).include? date.to_date
        venue.availabilities << Availability.create(date:date, promotion:params[:promotion])
      end
    end
  end


end
