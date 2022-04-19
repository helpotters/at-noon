class Event < ApplicationRecord
  has_many :voters, dependent: :destroy
  validates_presence_of :title, :description, :start_date, :end_date

  def days
    arr = []
    (start_date..end_date).each.map { |day| arr << { start_time: day, end_time: day } }
    arr.map { |hsh| OpenStruct.new(hsh) }
  end
end
