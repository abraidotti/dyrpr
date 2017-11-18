class CreatePilots < ActiveRecord::Migration[5.1]
  def change
    create_table :pilots do |t|
      t.string :first_name
      t.string :last_name
      t.string :ship_name
      t.string :employer_name
      t.timestamps
    end
  end
end
