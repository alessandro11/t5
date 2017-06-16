require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #
  test "no last_name/first_name" do
    person = people(:one)
    #person.last_name = ''
    assert !person.last_name.to_s.empty?
    assert !person.first_name.to_s.empty?
  end


  test "no last_name/first_name 2" do
    person = people(:two)
    assert !person.last_name.to_s.empty?
    assert !person.first_name.to_s.empty?
  end
end
