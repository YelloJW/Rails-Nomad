class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :address
      t.text :description
      t.integer :price_per_night
      t.integer :sleeps
      t.boolean :electricity
      t.boolean :drinking_water
      t.references :user, foreign_key: true
      t.string :type
      t.string :name

      t.timestamps
    end
  end
end
