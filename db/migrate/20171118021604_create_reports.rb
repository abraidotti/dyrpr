class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :message
      t.integer :pilot_id
      t.integer :structure_id
      t.timestamps
    end
  end
end
