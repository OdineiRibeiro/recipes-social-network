class AddColumnDescriptionToRecipe < ActiveRecord::Migration
  def change
    add_reference :recipes, :description, index: true, foreign_key: true
  end
end
