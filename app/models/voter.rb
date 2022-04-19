class Voter < ApplicationRecord
  belongs_to :event, optional: true
  has_many :votes, dependent: :destroy
  accepts_nested_attributes_for :votes

  validates_presence_of :name, :event
end
