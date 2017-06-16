require 'test_helper'

class HousesPeopleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	def setup
		@house_person = HousesPeople.new(house_id: '1')
	end

  test "house and person must be present" do
    assert_not @house_person.valid?
  end
  
  test "should not save house_person with no house_id or person_id" do
    person = houses_people(:one)
    assert !person.house_id?
    assert_not person.save
  end
end
