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
user.username = "cylou"
user.save!

user = User.new
user.email = 'valoch@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Valoch"
user.username = "valoch"
user.save!

user = User.new
user.email = 'benito@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Benito"
user.username = "benito"
user.save!

user = User.new
user.email = 'arno@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Arno"
user.username = "nono"
user.save!

user = User.new
user.email = 'jean@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Jean"
user.username = "jeanno"
user.save!

user = User.new
user.email = 'julien@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Julien"
user.username = "jujulien"
user.save!

user = User.new
user.email = 'marc@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "marc"
user.username = "marco"
user.save!

user = User.new
user.email = 'franck@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "franck"
user.username = "franckycbon"
user.save!

user = User.new
user.email = 'jacob@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "jacob"
user.username = "jacobin"
user.save!

user = User.new
user.email = 'mohamed@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "mohamed"
user.username = "momo"
user.save!

user = User.new
user.email = 'alexandre@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "alexandre"
user.username = "alex1"
user.save!

user = User.new
user.email = 'claire@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "claire"
user.username = "clairon"
user.save!

user = User.new
user.email = 'clara@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "clara"
user.username = "clarachou"
user.save!

user = User.new
user.email = 'eleonore@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "eleonore"
user.username = "eleo"
user.save!

user = User.new
user.email = 'alexis@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "alexis"
user.username = "alex2"
user.save!

user = User.new
user.email = 'mathieu@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "mathieu"
user.username = "matmat"
user.save!

user = User.new
user.email = 'germain@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "germain"
user.username = "germanou"
user.save!

user = User.new
user.email = 'juliette@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "juliette"
user.username = "jujuliette"
user.save!

user = User.new
user.email = 'tom@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "tatiana"
user.username = "tomitom"
user.save!

user = User.new
user.email = 'clement@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "clement"
user.username = "clementin"
user.save!

user = User.new
user.email = 'greg@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "greg"
user.username = "fudo"
user.save!

user = User.new
user.email = 'thomas@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "thomas"
user.username = "tomtomgo"
user.save!

user = User.new
user.email = 'sylvain@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "sylvain"
user.username = "sysyl"
user.save!

user = User.new
user.email = 'axel@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "axel"
user.username = "axelred"
user.save!

user = User.new
user.email = 'nolan@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "nolan"
user.username = "nonodu92"
user.save!

user = User.new
user.email = 'victor@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "victor"
user.username = "victorhugo"
user.save!

user = User.new
user.email = 'come@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "come"
user.username = "lacdecome"
user.save!

user = User.new
user.email = 'alexia@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "alexia"
user.username = "alexiadujardin"
user.save!

user = User.new
user.email = 'simon@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "simon"
user.username = "simonette"
user.save!

user = User.new
user.email = 'jesus@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "jesus"
user.username = "jesus"
user.save!

user = User.new
user.email = 'mathis@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "mathis"
user.username = "lionelmathis"
user.save!

user = User.new
user.email = 'samuel@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "samuel"
user.username = "samsoung"
user.save!

user = User.new
user.email = 'marius@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "marius"
user.username = "mariusfildentaire"
user.save!

user = User.new
user.email = 'noah@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "noah"
user.username = "yannicknoah"
user.save!

user = User.new
user.email = 'maxens@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "maxens"
user.username = "maxenscornet"
user.save!

user = User.new
user.email = 'romain@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "romain"
user.username = "romano"
user.save!

user = User.new
user.email = 'boris@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "boris"
user.username = "borisbreakdance"
user.save!

user = User.new
user.email = 'hugo@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "hugo"
user.username = "hugopasvictor"
user.save!

user = User.new
user.email = 'leo@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "leo"
user.username = "leomessi"
user.save!

user = User.new
user.email = 'nathan@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "nathan"
user.username = "nathanfake"
user.save!

user = User.new
user.email = 'gabin@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "gabin"
user.username = "jeangabin"
user.save!

user = User.new
user.email = 'paul@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "paul"
user.username = "pauldu17"
user.save!

user = User.new
user.email = 'quentin@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "quentin"
user.username = "quentinlephalique"
user.save!

user = User.new
user.email = 'matheo@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "matheo"
user.username = "matheodimeco"
user.save!

user = User.new
user.email = 'evan@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "evan"
user.username = "evanmcgregor"
user.save!

user = User.new
user.email = 'florian@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "florian"
user.username = "florianphilippot"
user.save!

user = User.new
user.email = 'corentin@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "corentin"
user.username = "corentindugenou"
user.save!

user = User.new
user.email = 'killian@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "killian"
user.username = "killianmbape"
user.save!

# Bar creation:

Bar.create(address: "16 Villa Gaudelet 75011 Paris", name: "Le Wagon", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", descripion: "Bar chaleureux et amical tenu par deux anciens fêtards")
Bar.create(address: "12 rue Claude Pouillet 75017 Paris", name: "Chez Pater'", tv_number: 8, tournament_size: 32, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
Bar.create(address: "10 rue Quincampoix 75004 Paris", name: "Le Demory", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
Bar.create(address: "1 rue de la Pompe 75016 Paris", name: "La Cantoche", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

Bar.create(address: "45 rue de la tour", name: "Le Wagon", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", descripion: "Bar chaleureux et amical tenu par deux anciens fêtards")
Bar.create(address: "12 rue Claude Pouillet", name: "Chez Pater'", tv_number: 8, tournament_size: 32, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
Bar.create(address: "10 rue Quincampoix", name: "Le Demory", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
Bar.create(address: "1 rue de la Pompe", name: "La Cantoche", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

Bar.create(address: "16 Villa Gaudelet", name: "Le Wagon", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", descripion: "Bar chaleureux et amical tenu par deux anciens fêtards")
Bar.create(address: "12 rue Claude Pouillet", name: "Chez Pater'", tv_number: 8, tournament_size: 32, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
Bar.create(address: "10 rue Quincampoix", name: "Le Demory", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
Bar.create(address: "1 rue de la Pompe", name: "La Cantoche", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

Bar.create(address: "16 Villa Gaudelet", name: "Le Wagon", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", descripion: "Bar chaleureux et amical tenu par deux anciens fêtards")
Bar.create(address: "12 rue Claude Pouillet", name: "Chez Pater'", tv_number: 8, tournament_size: 32, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
Bar.create(address: "10 rue Quincampoix", name: "Le Demory", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
Bar.create(address: "1 rue de la Pompe", name: "La Cantoche", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

Bar.create(address: "16 Villa Gaudelet", name: "Le Wagon", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", descripion: "Bar chaleureux et amical tenu par deux anciens fêtards")
Bar.create(address: "12 rue Claude Pouillet", name: "Chez Pater'", tv_number: 8, tournament_size: 32, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
Bar.create(address: "10 rue Quincampoix", name: "Le Demory", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
Bar.create(address: "1 rue de la Pompe", name: "La Cantoche", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

Bar.create(address: "16 Villa Gaudelet", name: "Le Wagon", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", descripion: "Bar chaleureux et amical tenu par deux anciens fêtards")
Bar.create(address: "12 rue Claude Pouillet", name: "Chez Pater'", tv_number: 8, tournament_size: 32, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
Bar.create(address: "10 rue Quincampoix", name: "Le Demory", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
Bar.create(address: "1 rue de la Pompe", name: "La Cantoche", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

Bar.create(address: "16 Villa Gaudelet", name: "Le Wagon", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", descripion: "Bar chaleureux et amical tenu par deux anciens fêtards")
Bar.create(address: "12 rue Claude Pouillet", name: "Chez Pater'", tv_number: 8, tournament_size: 32, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
Bar.create(address: "10 rue Quincampoix", name: "Le Demory", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
Bar.create(address: "1 rue de la Pompe", name: "La Cantoche", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

Bar.create(address: "16 Villa Gaudelet", name: "Le Wagon", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", descripion: "Bar chaleureux et amical tenu par deux anciens fêtards")
Bar.create(address: "12 rue Claude Pouillet", name: "Chez Pater'", tv_number: 8, tournament_size: 32, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
Bar.create(address: "10 rue Quincampoix", name: "Le Demory", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
Bar.create(address: "1 rue de la Pompe", name: "La Cantoche", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

Availability.create(start_day: DateTime.new(2015, 6, 22), end_day: DateTime.new(2015, 6, 25), bar_id: 1)
Availability.create(start_day: DateTime.new(2015, 6, 01), end_day: DateTime.new(2015, 6, 10), bar_id: 2)
Availability.create(start_day: DateTime.new(2015, 6, 24), end_day: DateTime.new(2015, 6, 29), bar_id: 3)
Availability.create(start_day: DateTime.new(2015, 5, 11), end_day: DateTime.new(2015, 5, 31), bar_id: 4)



Player.create(user_id: 1, admin: true, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: false, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 2, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: False, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: false, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 2, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: False, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: false, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 2, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: False, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: false, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 2, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: False, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: false, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 2, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: False, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: false, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 2, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: False, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: false, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 2, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: False, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: false, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 2, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: False, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: false, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 2, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: False, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: false, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 2, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: False, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: false, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 2, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: False, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: false, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: true, tournament_id: 2, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)
Player.create(user_id: , admin: False, tournament_id: 1, position: "A1", ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game: 0)



















