class Event < ApplicationRecord
  has_many :voters
  validates_presence_of :title, :description, :start_date, :end_date
end
