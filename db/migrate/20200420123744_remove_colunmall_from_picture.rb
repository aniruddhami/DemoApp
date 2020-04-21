class RemoveColunmallFromPicture < ActiveRecord::Migration[6.0]
  def change
  	remove_column :pictures, :url_file_name
  	remove_column :pictures, :url_content_type
  	remove_column :pictures, :url_updated_at
  	remove_column :pictures, :url_file_size
  end
end
