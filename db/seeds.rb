# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Clearing database..."
Field.destroy_all
Company.destroy_all
User.destroy_all
Registration.destroy_all

p "Database clear, adding fields.."
Field.create(name: "IT Leader", avg_wage: 85200)
Field.create(name: "System Architect", avg_wage: 69600)
Field.create(name: "Cyber Security Engineer", avg_wage: 68400)
Field.create(name: "Software Developer", avg_wage: 66240)
Field.create(name: "Web Developer", avg_wage: 66120)
Field.create(name: "Data Scientist", avg_wage: 64680)
Field.create(name: "System Administrator", avg_wage: 61800)
Field.create(name: "Hardware Technician", avg_wage: 61080)
Field.create(name: "Tech Support", avg_wage: 49080)

p "Fields added, adding companies..."

Company.create(name: "Google")
Company.create(name: "Apple")
Company.create(name: "Samsung")
Company.create(name: "Amazon")
Company.create(name: "Foxconn")
Company.create(name: "Microsoft")
Company.create(name: "Hitachi")
Company.create(name: "Sony")
Company.create(name: "Panasonic")
Company.create(name: "Dell")
Company.create(name: "Intel")
Company.create(name: "Accenture")
Company.create(name: "Snapchat")
Company.create(name: "Twitter")
Company.create(name: "Instagram")
Company.create(name: "Uber")
Company.create(name: "Le Wagon")
Company.create(name: "Yahoo")
Company.create(name: "SAP")
Company.create(name: "Netflix")
Company.create(name: "Xiaomi")
Company.create(name: "Facebook")
Company.create(name: "Statoil")
p "...Done"
