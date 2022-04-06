class Voter < ApplicationRecord
  validates_presence_of :name, :vote
end
