class RemoveColumnUserFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :user_id_id
  end
end
