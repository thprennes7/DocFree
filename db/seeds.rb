# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


Appointment.destroy_all
Patient.destroy_all
Doctor.destroy_all
City.destroy_all
Speciality.destroy_all
SpecialityDoctor.destroy_all

10.times do
  City.create!(name: Faker::Address.city)
end

30.times do
  Speciality.create!(name: Faker::Lorem.word)
end

15.times do
  Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: City.all.sample.id)
end

30.times do
SpecialityDoctor.create!(doctor_id: Doctor.all.sample.id, speciality_id: Speciality.all.sample.id)
end

15.times do
  Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
end

30.times do
  Appointment.create!(date: Faker::Date.forward(30), patient_id: Patient.all.sample.id, doctor_id: Doctor.all.sample.id, city_id: City.all.sample.id )
end
