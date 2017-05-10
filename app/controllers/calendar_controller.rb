class CalendarController < ApplicationController
  def show
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @date = Time.zone.now
    start_of_day = @date.at_beginning_of_day
    end_of_day = @date.at_end_of_day
    @events = Event.where(date_and_time: start_of_day..end_of_day)
    @events_by_date = @events.group_by { |i| i.start_date.to_date }
    # @day = params [:date] ? Date.parse(params[:date]) : Date.today
  end

  def index
  @events = Event.group_by(&:date)

  end


  def calendar_params
    #params.require(:day).permit(:name, :date, :location)
    #params.require(:event).permit(:name, :date_and_time, :location)
  end
end
