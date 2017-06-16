class Person < ActiveRecord::Base
  validates_presence_of :last_name, :first_name
  validates :last_name, :first_name, format: { with: /.+/, message: "vazio!" }

  has_one :profession
  has_many :shoes, dependent: :destroy
  has_and_belongs_to_many :houses, dependent: :destroy
end
