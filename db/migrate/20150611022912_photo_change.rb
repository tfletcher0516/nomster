class PhotoChange < ActiveRecord::Migration
 def change
  	change_column :photos, :caption, :string
  end
end
