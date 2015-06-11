class ChangeCaptionToAString < ActiveRecord::Migration
  def change
  	change_column :photo, :caption, :string
  end
end
