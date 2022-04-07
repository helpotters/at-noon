class ChangeDaysInVote < ActiveRecord::Migration[7.0]
  def change
    change_column :votes, :day, :date
  end
end
