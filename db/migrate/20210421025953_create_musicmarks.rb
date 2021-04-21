class CreateMusicmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :musicmarks do |t|
      t.string :name, null: false
      t.string :band
      t.string :album
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :kind, null: false, foreign_key: true

      t.timestamps
    end
  end
end
