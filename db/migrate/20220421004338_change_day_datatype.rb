class ChangeDayDatatype < ActiveRecord::Migration[7.0]
  def change
    change_column :votes, :day, :date, using: "day::date"
  end
end
