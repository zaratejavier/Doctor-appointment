# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# appt_date = "Wed, 24 Sep 2014"

10.times do 
  patient = Patient.creaete(first_name: Faker::Name.first_name)

  10.times do 
    physician = Physician.create(
      first_name: Faker::Name.first_name
    )

    10.times do
    appointment = Appointments.create(
      appt_date: Faker::Date.between(from: 2.days.ago, to: Date.today)
    )
end