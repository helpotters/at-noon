class CreateVoters < ActiveRecord::Migration[7.0]
  def change
    create_table :voters do |t|
      t.string :name
      t.string :vote

      t.timestamps
    end
  end
end