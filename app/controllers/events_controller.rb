class EventsController < ApplicationController
  def new
    @events = Event.new
  end

  def create
    @events = Event.new(event_params)
   if @events.save
      redirect_to root_path
   else
      render :new
   end
  end

  def index
    @day = Time.zone.now
    start_of_day = @day.at_beginning_of_day
    end_of_day = @day.at_end_of_day
    @events = Event.where(date_and_time: start_of_day..end_of_day)
  end

  def show
    @day = Time.zone.parse(params[:id])
    start_of_day = @day.at_beginning_of_day
    end_of_day = @day.at_end_of_day
   @events = Event.where(date_and_time: start_of_day..end_of_day)
  end

  private
  def event_params
    params.require(:event).permit(:name, :date_and_time, :location)
  end
end
