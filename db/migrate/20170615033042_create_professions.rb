class CreateProfessions < ActiveRecord::Migration
  def change
    create_table :professions do |t|
      t.string :name
      t.string :place
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
