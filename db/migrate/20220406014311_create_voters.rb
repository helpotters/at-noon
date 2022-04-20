class CreateVoters < ActiveRecord::Migration[7.0]
  def change
    create_table :voters do |t|
      t.text :name
      t.text :vote

      t.timestamps
    end
  end
end
