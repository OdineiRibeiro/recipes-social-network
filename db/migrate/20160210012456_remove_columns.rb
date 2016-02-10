class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :recipes, :photo_file_name
    remove_column :recipes, :photo_content_type
    remove_column :recipes, :photo_file_size
    remove_column :recipes, :photo_updated_at
    remove_column :recipes, :photo
  end
end
