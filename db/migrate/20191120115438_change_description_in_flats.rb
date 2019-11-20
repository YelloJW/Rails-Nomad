class ChangeDescriptionInFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :details, :text
  end
end
