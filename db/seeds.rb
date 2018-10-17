# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#{

contact = Contact.new({first_name: "Jenny", last_name: "Jenny", email: "jenny@jenny.com", phone_number: "867-5309"})
contact.save

contact = Contact.new({first_name: "Sir", last_name: "Mix-A-Lot", email: "sir@mix-a-lot.com", phone_number: "1-900-MIXALOT"})
contact.save

contact = Contact.new({id: 3, "first_name": "Dr. Peter", last_name: "Venkman", email: "Venkman@ghostbusters.com", phone_number: "555-2368",})
contact.save

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
