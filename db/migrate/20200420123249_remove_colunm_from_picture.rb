class RemoveColunmFromPicture < ActiveRecord::Migration[6.0]
  def change
  	remove_column :pictures, :url
  end
end
