class Voter < ApplicationRecord
  belongs_to :event, optional: true, dependent: :destroy
  has_many :votes

  validates_presence_of :name, :event
end
