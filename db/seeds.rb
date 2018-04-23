# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "User User",
             email: "example@user.com",
             password:              "meemers",
             password_confirmation: "meemers")

50.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

  # users = User.order(:created_at).take(6)
  #
  # 50.times do
  #   name = Faker::Lorem.sentence(11)
  #   users.each { |user| user.patient.create!(name: name, address: address, birthdate: birthdate, contact: contact, injury: injury, infection: infection, specialobservation: specialobservation, appointment: appointment, time: time) }
  # end
