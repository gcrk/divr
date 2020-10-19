class CreateScubas < ActiveRecord::Migration[5.2]
  def change
    create_table :scubas do |t|
      t.text :title
      t.date :date
      t.text :location
      t.integer :duration
      t.integer :depth
      t.text :gps
      t.text :buddy
      t.text :notes
      t.integer :center_id
      t.integer :user_id

      t.timestamps
    end
  end
end
