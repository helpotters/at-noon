class RemoveEventIdFromVotes < ActiveRecord::Migration[7.0]
  def change
    remove_column :votes, :event_id
  end
end
