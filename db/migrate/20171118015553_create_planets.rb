class CreatePlanets < ActiveRecord::Migration[5.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :resource
      t.timestamps
    end
  end
end
