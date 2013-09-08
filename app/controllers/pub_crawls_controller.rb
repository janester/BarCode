class PubCrawlsController < ApplicationController
  def index
    @crawls = PubCrawl.all
    @venues = Venue.all
    @x = 4
  end
  def new
    @crawl = PubCrawl.new
    @end_times = []
    @times = PubCrawl.create_times
  end

  def end_times
    start = params[:start_time][0..1].to_i
    @end_times = PubCrawl.create_end_times(start)
  end

  def create
    @crawl = PubCrawl.new(params[:pub_crawl])
    @crawl.start_time = params[:start_time]
    @crawl.end_time = params[:end_times]
    if @crawl.save
      @crawl.users << @cu
      Notifications.made_crawl_message(@cu, @crawl).deliver
    else
      @end_times = []
      @times = PubCrawl.create_times
    end
  end

  def join_crawl
    p = PubCrawl.find(params[:id])
    p.users << @cu
    Notifications.join_crawl_message(@cu, p).deliver
    @crawls = PubCrawl.all
  end

  def invite_friends
    crawl = PubCrawl.find(params[:crawl])
    friends = params[:emails].split(",").map(&:squish)
    friends.each do |x|
      Notifications.join_my_crawl_message(x, @cu, crawl).deliver
    end
    @crawls = PubCrawl.all
  end


end
