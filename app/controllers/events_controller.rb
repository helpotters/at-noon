class EventsController < ApplicationController
  before_action :show_event, only: %i[show]
  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to event_url(@event.id), notice: 'Event created!' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def show
    @voter = Voter.new
  end

  def destroy
    @event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start_date, :end_date)
  end

  def show_event
    @event = Event.find(params[:id])
  end
end
