class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :brand
      t.integer :size
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
