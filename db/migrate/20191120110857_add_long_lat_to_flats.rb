class AddLongLatToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :logitute, :float
    add_column :flats, :latitude, :float
  end
end
