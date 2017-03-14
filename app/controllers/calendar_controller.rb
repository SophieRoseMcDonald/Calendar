class CalendarController < ApplicationController
  def show
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def index
  @events = Event.group_by(&:date)
  end
end
