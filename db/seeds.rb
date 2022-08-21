# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: 'railsmailer69@gmail.com', password: 'onlyrails69', password_confirmation: 'onlyrails69', role: 1,
            approved: true)
User.create(email: 'trader@email.com', password: 'password', password_confirmation: 'password', approved: true)
