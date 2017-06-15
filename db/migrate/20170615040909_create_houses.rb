class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :tenant
      t.integer :room

      t.timestamps null: false
    end
  end
end
