class CalendarController < ApplicationController
  def show
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  # @day = params [:date] ? Date.parse(params[:date]) : Date.today
  end

  def index
  # @events = Event.group_by(&:date)
  end
end

def calendar_params
  params.require(:day).permit( :date, :location)
  #params.require(:event).permit(:name, :date_and_time, :location, :id)
end
