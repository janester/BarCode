class ActivitiesController < ApplicationController
  def new
    @venue = Venue.find(params[:venue])
    @user_type = "reg"
  end
  def create
    @user_type = params[:user_type]
    venue = Venue.find(params[:venue_id])
    venue.activities << Activity.create(text:params[:question], type:params[:type], venue_id:params[:venue_id])
    @crawls = PubCrawl.all
  end
end