class ActivitiesController < ApplicationController
  def create
    Activity.create(text:params[:question], type:params[:type], venue_id:params[:venue_id])
  end
end