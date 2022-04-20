class Vote < ApplicationRecord
  belongs_to :voter

  validates_presence_of :voter, :day
end
