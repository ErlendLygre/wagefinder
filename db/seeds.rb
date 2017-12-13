# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Field.destroy_all

Field.create(name: "IT Leader")
Field.create(name: "System Architect")
Field.create(name: "Cyber Security Engineer")
Field.create(name: "Software Developer")
Field.create(name: "Web Developer")
Field.create(name: "Data Scientist")
Field.create(name: "System Administrator")
Field.create(name: "Hardware Technician")
Field.create(name: "Tech Support")


