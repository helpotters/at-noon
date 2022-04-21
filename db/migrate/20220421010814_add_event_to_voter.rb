class AddEventToVoter < ActiveRecord::Migration[7.0]
  def change
    add_reference :voters, :event, null: false, foreign_key: true
  end
end
