class Voter < ApplicationRecord
  belongs_to :event, optional: true
  has_many :votes, dependent: :destroy
  accepts_nested_attributes_for :votes, allow_destroy: true, reject_if: proc { |vote|
                                                                          true unless vote.key?('day')
                                                                        }
  validates_presence_of :name, :event
end
