class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes do |t|
      t.integer :voter_id
      t.integer :event_id
      t.string :day

      t.timestamps
    end
  end
end
