class EventsController < ApplicationController
  def new
    @events = Event.new
  end
end
