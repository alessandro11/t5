class CreateHousePeople < ActiveRecord::Migration
  def change
    create_table :house_people do |t|
      t.references :house, index: true, foreign_key: true
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
