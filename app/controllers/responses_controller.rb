class ResponsesController < ApplicationController
  def new
    @activity = @cu.check_ins.last.stop.activity
  end

  def create
    stop = @cu.check_ins.last.stop
    @cu.responses << Response.create(image:params[:image], stop_id:stop.id)
    promotion = stop.venue.availabilities.where(:date => Date.today).first.promotion
    p = (1..10).to_a.shuffle.sample(3).join + promotion.upcase.gsub("!","").gsub(" ", "")
    client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
    body = "Congrats! You finished a challenge, here's your coupon code for #{promotion}: #{p}"
    client.account.sms.messages.create(:from => ENV['TW_NUM'], :to => @cu.phone, :body => body)
    if stop.next_stop.present?
      nxt = stop.next_stop
      address = nxt.venue.address.gsub(" ", "+")
      client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
      body = "Here are the directions to your next stop: http://maps.google.com/maps?daddr=#{address}"
      client.account.sms.messages.create(:from => ENV['TW_NUM'], :to => @cu.phone, :body => body)
    else
      client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
      body = "Congrats! You finished your Pub Crawl!"
      client.account.sms.messages.create(:from => ENV['TW_NUM'], :to => @cu.phone, :body => body)
    end
  end
end
