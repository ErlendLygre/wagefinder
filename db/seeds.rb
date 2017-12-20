# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


p "Clearing database..."
Field.destroy_all
Company.destroy_all
User.destroy_all
Registration.destroy_all


p "Database clear, adding fields.."
Field.create(name: "IT Leader", avg_wage: 85200)
Field.create(name: "System Architect", avg_wage: 69600)
Field.create(name: "Security Engineer", avg_wage: 68400)
Field.create(name: "Software Developer", avg_wage: 66240)
Field.create(name: "Web Developer", avg_wage: 66120)
Field.create(name: "Data Scientist", avg_wage: 64680)
Field.create(name: "Sysadmin", avg_wage: 61800)
Field.create(name: "Technician", avg_wage: 61080)
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

p 'Companies added, adding registrations (this may take a while)'
1000.times do
  Registration.create(email: Faker::Internet.email,
                      password: '123456',
                      password_confirmation: '123456')
end

p 'Creating users'
Registration.all.each do |registration|
  User.create(registration: registration)
end

p 'Creating wages'
User.all.each do |user|
   Wage.create(company: Company.all.sample,
              field: Field.all.sample,
              user: user,
              wage: (30000...150000).to_a.sample,
              years_worked: (1...45).to_a.sample)
end

p "...Done"



