class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :yield
      t.integer :preparation_time
      t.text :ingredients
      t.text :instructions
      t.string :photo
      t.references :cuisine, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
