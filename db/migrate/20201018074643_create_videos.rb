class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.text :name
      t.text :link
      t.integer :user_id
      t.integer :scuba_id
      t.integer :center_id

      t.timestamps
    end
  end
end
