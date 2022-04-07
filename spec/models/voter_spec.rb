require "rails_helper"

RSpec.describe Voter, type: :model do
  subject do
    described_class.new(name: "Jimmy")
  end
  describe "Validations" do
    it { is_expected.to be_valid }
    it "is not valid without name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
  describe "Associations" do
    it { should belong_to(:event).without_validating_presence }
  end
end
