class Event < ApplicationRecord
  has_many :voters, dependent: :destroy
  validates_presence_of :title, :description, :start_date, :end_date
end
