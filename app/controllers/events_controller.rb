class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @day = Date.today
  end

  def show
  end

  private
  def event_params
    params.require(:event).permit(:name, :date_and_time, :location)
  end
end
