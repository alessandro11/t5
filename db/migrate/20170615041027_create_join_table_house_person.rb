class CreateJoinTableHousePerson < ActiveRecord::Migration
  def change
    create_join_table :houses, :people do |t|
      # t.index [:house_id, :person_id]
      # t.index [:person_id, :house_id]
    end
  end
end
