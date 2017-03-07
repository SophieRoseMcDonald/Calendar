class CalendarController < ApplicationController
  def show
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def index
  end
end
