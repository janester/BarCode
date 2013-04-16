class CheckInsController < ApplicationController
  def new
  end

  def create
    binding.pry
    a = [params[:latitude], params[:longitude]]
    @venues = Venue.near(a, 0.2, :order => :distance)
    @venues.select{|x| @cu.todays_crawl.venues.include?x}
    if @venues.present?
      @cu.check_ins << CheckIn.create(latitude:params[:latitude], longitude:params[:longitude])
    end
  end

  def select_location
    stop = @cu.todays_crawl.stops.where(:venue_id => params[:venue]).first
    a = @cu.check_ins.select{|x| x.stop == stop}
    if stop.present?
      if a.empty?
        stop.check_ins << @cu.check_ins.last
        @venue = stop.venue
      else
        @venue = "already"
        CheckIn.delete(@cu.check_ins.last.id)
        @stop = stop
      end
    else
      @venue = nil
    end
  end
end
