class ResponsesController < ApplicationController
  def new
    @activity = @cu.check_ins.last.stop.activity
  end

  def create
  end
end
