class CreateHousesPeople < ActiveRecord::Migration
  def change
    create_table :houses_people, id: false do |t|
      t.references :house, index: true, foreign_key: true
      t.references :person, index: true, foreign_key: true
    end
  end
end
