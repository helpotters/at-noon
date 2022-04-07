require "rails_helper"

RSpec.describe Vote, type: :model do
  describe "Associations" do
    it { should belong_to(:voter) }
    it { should belong_to(:event) }
  end

  describe "Validations" do
    it { should validate_presence_of(:voter) }
  end
end
