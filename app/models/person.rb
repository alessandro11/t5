class Person < ActiveRecord::Base
  has_one :profession
  has_many :shoes, dependent: :destroy
  has_and_belongs_to_many :houses, dependent: :destroy
end
