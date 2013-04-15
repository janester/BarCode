class HomeController < ApplicationController
  def index
    @crawls = PubCrawl.all
    @venues = Venue.all
    @x = 4
  end
end