class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.float :x
      t.float :y
      t.float :z
      t.references :map, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
