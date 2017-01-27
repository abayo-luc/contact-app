class AddLongitudeData < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :lingitude, :float
  end
end
