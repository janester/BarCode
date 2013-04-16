class CheckInsController < ApplicationController
  def new
  end

  def create
    binding.pry
    a = [params[:latitude], params[:longitude]]
    @venues = Venue.near(a, 10, :order => :distance)
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
        activity = stop.activity
        client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
        if activity.response_type == "p"
          body = "Your Mission: #{activity.text}"
        else
          body = "Your Question: #{activity.text}"
        end
        client.account.sms.messages.create(:from => ENV['TW_NUM'], :to => @cu.phone, :body => body)
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
