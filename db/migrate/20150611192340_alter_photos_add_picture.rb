class AlterPhotosAddPicture < ActiveRecord::Migration
  def change
  	remove_column :photos, :Picture
  	add_column :photos, :picture, :string
  end
end
