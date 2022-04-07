# voting_engine_spec.rb
require "rails_helper"

RSpec.describe VotingEngine do
  describe ".vote!" do
    let(:voter) { Voter.create(name: "Gary Gygax") }
    let(:event) { Event.create(title: "DnD Session", description: "Our first session!", start_date: Date.parse("10-03-2022"), end_date: Date.parse("17-03-2022")) }

    it "creates a new vote in an event if vote is within event date range" do
      described_class.vote!(event, "12-03-2022", voter)
      expect(event.errors).to be_empty

      described_class.vote!(event, "10-03-2022", voter)
      expect(event.errors).to be_empty

      described_class.vote!(event, "17-03-2022", voter)
      expect(event.errors).to be_empty
    end

    it "cannot create a vote in an event if it is not within the event date range" do
      described_class.vote!(event, "18-03-2050", voter)
      expect(event.errors[:vote].first).to eq("Must pick a date in range")
    end
  end
end
