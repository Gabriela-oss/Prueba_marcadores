class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.boolean :character
      t.string :genre

      t.timestamps
    end
  end
end
