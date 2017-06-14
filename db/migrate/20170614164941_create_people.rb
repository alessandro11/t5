class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :last_name
      t.string :first_name
      t.string :address
      t.string :city
      t.references :profession, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
