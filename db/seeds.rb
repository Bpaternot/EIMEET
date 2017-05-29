# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Availability.destroy_all
Bar.destroy_all
Tournament.destroy_all
Player.destroy_all
User.destroy_all

user = User.new
user.email = 'cylou@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Cylou"
user.save!

user = User.new
user.email = 'valoch@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Valoch"
user.save!

user = User.new
user.email = 'benito@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Benito"
user.save!

user = User.new
user.email = 'arno@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Arno"
user.save!

# Bar creation:

Bar.create(address: "16 Villa Gaudelet", name: "Le Wagon", tv_number: 4, tournament_size: "medium", phone_number: "01.23.54.93.82")
Bar.create(address: "12 rue Claude Pouillet", name: "Chez Pater'", tv_number: 8, tournament_size: "large", phone_number: "01.23.34.93.12")
Bar.create(address: "10 rue Quincampoix", name: "Le Demory", tv_number: 2, tournament_size: "small", phone_number: "01.23.54.93.82")
Bar.create(address: "1 rue de la Pompe", name: "La Cantoche", tv_number: 4, tournament_size: "medium", phone_number: "01.23.54.93.11")
















