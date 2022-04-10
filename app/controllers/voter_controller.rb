class VoterController < ApplicationController
  before_action :load_event

  def new
    @voter = Voter.build
  end

  def create
    @voter = @event.voters.build(voter_params)
  end

  private

  def load_event
    @event = Event.find(params[:event_id])
  end

  def voter_params
    params.require(:voter).permit(:name)
  end
end
