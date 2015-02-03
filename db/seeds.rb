# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create name: 'Ironhack', description: 'Ironhack is a...'

m = Project.create name: 'Time tracking app'
m.entries.create hours: 16, minutes: 25

n = Project.create name: 'Recipes', description: 'Track my favourite recipes'
n.entries.create hours: 23, minutes: 34

p = Project.create name: 'Sean Ring', description: 'The most interesting man in the world'
p.entries.create hours: 5, minutes: 32



