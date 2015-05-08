class CreateEdges < ActiveRecord::Migration
  def change
    create_table :edges do |t|
      t.integer :source_id
      t.integer :target_id
      t.references :map, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
