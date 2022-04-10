class EventController < ApplicationController
  def new
    @event = Event.build
  end

  def create
    @event = Event.create(event_params)
  end

  def destroy
    @event.destroy
  end

  private

  def event_params; end
end
