class HomeController < ApplicationController
  def index
    @crawls = PubCrawl.all
  end
end