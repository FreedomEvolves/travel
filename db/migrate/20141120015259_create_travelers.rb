class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
      t.string :name
      t.integer :destination_id

      t.timestamps null: false
    end
  end
end
