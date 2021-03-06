class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.string :title, null: false
      t.text :description
      t.string :type, null: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
