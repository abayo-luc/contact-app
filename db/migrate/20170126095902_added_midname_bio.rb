class AddedMidnameBio < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :midle_name, :string
    add_column :contacts, :bio, :text
  end
end
