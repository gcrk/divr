class CreateCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :centers do |t|
      t.text :name
      t.text :country
      t.text :city
      t.text :gps
      t.text :photo
      t.text :website
      t.integer :user_id

      t.timestamps
    end
  end
end
