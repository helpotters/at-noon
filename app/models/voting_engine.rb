#!/usr/bin/env ruby

# Adds a vote to the event
class VotingEngine
  def self.vote!(event, date, voter)
    new(event, Date.parse(date), voter).vote!
  end

  def initialize(event, day, voter)
    @event = event
    @vote = Vote.new(voter: voter, event: event, day: day)
  end

  def vote!
    if @vote.valid? && is_in_range?
      @vote.save
    else
      @event.errors.add(:vote, "Must pick a date in range")
    end
  end

  private

  def is_in_range?
    (@event.start_date..@event.end_date).include?(@vote.day)
  end
end
