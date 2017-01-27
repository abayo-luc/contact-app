class RenameLingitideToLongitide < ActiveRecord::Migration[5.0]
  def change
    rename_column :contacts, :lingitude, :longitude
  end
end
