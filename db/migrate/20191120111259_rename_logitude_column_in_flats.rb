class RenameLogitudeColumnInFlats < ActiveRecord::Migration[5.2]
  def change
    rename_column :flats, :logitute, :longitude
  end
end
