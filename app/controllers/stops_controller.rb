class StopsController < ApplicationController
  def num_stops
    @x = params[:num_stops].to_i
    @crawl = PubCrawl.find(params[:crawl])
    @venues = Venue.all.map{|x| x.availabilities}.flatten.select{|x| x.date == @crawl.date}.map{|x| x.venue}
  end

  def create
    binding.pry
    stops = params[:stops].to_a.map{|x| x[1]}.reverse
    crawl = PubCrawl.find(params[:crawl])
    drops = []
    stops.each do |x|
      unless drops.include?x[:spot]
        drops << x[:spot]
      end
    end
    drops = drops.sort
    drops.each do |x|
      index = stops.index{|y| y[:spot] == x}
      crawl.stops << Stop.create(venue_id:stops[index][:bar])
    end
    @crawls = PubCrawl.all
  end




end
