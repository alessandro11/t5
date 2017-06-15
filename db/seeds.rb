# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Person.create({:last_name => 'n1', :first_name => 'n1', :address => 'a1', :city => 'c1'})
p2 = Person.create({:last_name => 'n2', :first_name => 'n2', :address => 'a2', :city => 'c2'})
p3 = Person.create({:last_name => 'n3', :first_name => 'n3', :address => 'a3', :city => 'c3'})
p4 = Person.create({:last_name => 'n4', :first_name => 'n4', :address => 'a4', :city => 'c4'})
p5 = Person.create({:last_name => 'n5', :first_name => 'n5', :address => 'a5', :city => 'c5'})

pr = Profession.create({:name => 'pr1', :place => 'pl1', :person_id => p1[:id]})

Shoe.create({:brand => 'b1', :size => '1', :person_id => p1[:id]})
Shoe.create({:brand => 'b2', :size => '2', :person_id => p1[:id]})

h1 = House.create({:tenant => 'n1', :room => '1'})
h2 = House.create({:tenant => 'n2', :room => '1'})

#HousesPeople.create({:house_id => h1[:id], :person_id => p1[:id]})
#HousesPerson.create({:house_id => h1[:id], :person_id => p2[:id]})

#HousesPerson.create({:house_id => h2[:id], :person_id => p3[:id]})
#HousesPerson.create({:house_id => h2[:id], :person_id => p4[:id]})
#HousesPerson.create({:house_id => h2[:id], :person_id => p5[:id]})
