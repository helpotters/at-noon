require 'rails_helper'

RSpec.describe Event, type: :model do
  subject do
    described_class.new(title: 'Dungeons and Dragons Session',
                        description: "Gary's campaign",
                        start_date: Date.today,
                        end_date: Date.today + 1.days)
  end

  it { is_expected.to be_valid }
  it 'is not valid without title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without start_date' do
    subject.start_date = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without end_date' do
    subject.end_date = nil
    expect(subject).to_not be_valid
  end
end
