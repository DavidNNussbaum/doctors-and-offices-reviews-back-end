# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(First_name: "Fri", email: "fri@dos.com", password: "890")
User.create(First_name: "Eve", email: "eve@dos.com", password: "890")
User.create(First_name: email: "Max, "max@dos.com", password: "890")
Doctor.create(first_name: "Evan", last_name: "Philips", address: "850 Main")
Review.create(doctor_rating: 5, doctor_comments: "Great", doctor_office_rating: 2, doctor_office_comments: "Clean", doctor_id: "1", user_id: "1" )
 
     
