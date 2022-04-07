class Voter < ApplicationRecord
  belongs_to :event, optional: true
  has_many :votes

  validates_presence_of :name, :vote
end
