class PubCrawlsController < ApplicationController
  def new
    @crawl = PubCrawl.new
    @times = []
    25.times do |hour|
      if hour < 10
        a = "0#{hour}:00"
      else
        a = "#{hour}:00"
      end
      @times << [a,a]
      @end_times = []
    end
  end

  def end_times
    start = params[:start_time][0..1].to_i
    @end_times = []
    (25-start).times do |hour|
      if hour+start < 10
        a = "0#{hour+start}:00"
      else
        a = "#{hour+start}:00"
      end
      @end_times << [a,a]
    end
  end

  def create
    p = PubCrawl.create(params[:pub_crawl])
    p.users << @cu
    p.start_time = params[:start_time]
    p.end_time = params[:end_times]
    p.save
    @crawl = p
    Notifications.made_crawl_message(@cu, @crawl).deliver
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
