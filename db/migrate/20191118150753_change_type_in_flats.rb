class ChangeTypeInFlats < ActiveRecord::Migration[5.2]
  def change
    rename_column :flats, :type, :flat_type
  end
end
