class HousesPeople < ActiveRecord::Base
  validates_presence_of :house_id, :person_id
  validates :house_id, format: { with: /\d+/, message: 'somente numero!' }
  validates :person_id, format: { with: /\d+/, message: 'somente numero!' }

  belongs_to :house
  belongs_to :person
end
