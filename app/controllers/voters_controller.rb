class VotersController < ApplicationController
  # before_action :load_event

  def new
    @event = Event.find(params[:event_id])
    @voter = @event.voters.build
  end

  def create
    @event = Event.find(voter_params[:event_id])
    @voter = @event.voters.build(voter_params)

    respond_to do |format|
      if @voter.save
        format.html { redirect_to event_path(@event.id), notice: 'voter created!' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  # def load_event
  #   @event = Event.find(params[:event_id])
  # end

  def voter_params
    params.require(:voter).permit(:name, :event_id)
  end
end
