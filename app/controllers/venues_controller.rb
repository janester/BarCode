class VenuesController < ApplicationController
  def new
    @venue = Venue.new
    @categories = Category.order(:name)
  end

  def create
    @venue = Venue.create(params[:venue])
    @cu.venues << @venue
    @user_type = "own"
  end

  def edit
    @venue = Venue.find(params[:id])
    @categories = Category.order(:name)
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
      venue.availabilities << Availability.create(date:date, promotion:params[:promotion])
    end
    @venue = venue
  end


end
