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
end
