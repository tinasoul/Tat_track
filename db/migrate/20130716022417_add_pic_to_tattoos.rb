class AddPicToTattoos < ActiveRecord::Migration
  def change
    add_column :tattoos, :pic, :string
  end
end
