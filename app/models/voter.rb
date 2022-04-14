class Voter < ApplicationRecord
  belongs_to :event, optional: true
  has_many :votes, dependent: :destroy

  validates_presence_of :name, :event
end
