class HousePerson < ActiveRecord::Base
  belongs_to :house
  belongs_to :person
end
