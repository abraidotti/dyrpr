class CreateStructures < ActiveRecord::Migration[5.1]
  def change
    create_table :structures do |t|
      t.string :structure_name
      t.string :description
      t.integer :planet_id
      t.timestamps
    end
  end
end
