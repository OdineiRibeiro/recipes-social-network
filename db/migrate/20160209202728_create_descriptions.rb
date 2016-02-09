class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
