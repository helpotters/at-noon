require 'rails_helper'

RSpec.describe Voter, type: :model do
  subject do
    described_class.new(name: 'Jimmy',
                        vote: 'Friday')
  end
  describe 'Validations' do
    it { is_expected.to be_valid }
    it 'is not valid without name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a vote' do
      subject.vote = nil
      expect(subject).to_not be_valid
    end
  end
end
