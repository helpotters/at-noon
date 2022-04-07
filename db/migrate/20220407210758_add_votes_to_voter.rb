class AddVotesToVoter < ActiveRecord::Migration[7.0]
  def change
    remove_column :voters, :vote
  end
end
