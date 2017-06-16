# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Person.create({:last_name => 'sobrenome1', :first_name => 'nome1', :address => 'end1', :city => 'cid1'})
p2 = Person.create({:last_name => 'sobrenome2', :first_name => 'nome2', :address => 'end2', :city => 'cid2'})
p3 = Person.create({:last_name => 'sobrenome3', :first_name => 'nome3', :address => 'end3', :city => 'cid3'})
p4 = Person.create({:last_name => 'sobrenome4', :first_name => 'nome4', :address => 'end4', :city => 'cid4'})
p5 = Person.create({:last_name => 'sobrenome5', :first_name => 'nome5', :address => 'end5', :city => 'cid5'})

pr = Profession.create({:name => 'profissao1', :place => 'lugar1', :person_id => p1[:id]})
pr = Profession.create({:name => 'profissao2', :place => 'lugar2', :person_id => p2[:id]})
pr = Profession.create({:name => 'profissao3', :place => 'lugar3', :person_id => p3[:id]})
pr = Profession.create({:name => 'profissao4', :place => 'lugar4', :person_id => p4[:id]})

Shoe.create({:brand => 'nike1', :size => '1', :person_id => p1[:id]})
Shoe.create({:brand => 'nike2', :size => '2', :person_id => p1[:id]})
Shoe.create({:brand => 'nike3', :size => '3', :person_id => p2[:id]})
Shoe.create({:brand => 'nike4', :size => '4', :person_id => p2[:id]})

h1 = House.create({:tenant => 'morador1', :room => '1'})
h2 = House.create({:tenant => 'morador2', :room => '2'})

HousesPeople.create({:house_id => h1[:id], :person_id => p1[:id]})
HousesPeople.create({:house_id => h1[:id], :person_id => p1[:id]})
HousesPeople.create({:house_id => h1[:id], :person_id => p2[:id]})
HousesPeople.create({:house_id => h2[:id], :person_id => p3[:id]})
