class Vote < ApplicationRecord
  belongs_to :voter
  belongs_to :event

  validates_presence_of :voter, :day
end
