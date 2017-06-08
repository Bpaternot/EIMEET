require 'open-uri'
require 'json'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Availability.destroy_all
Player.destroy_all
Tournament.destroy_all
Bar.destroy_all
User.destroy_all

# Users

user = User.new
user.email = 'cylou@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Cylou"
user.username = "cylou"
user.total_goals = 45
user.total_against_goals = 18
user.won_tournaments = 1
user.save!

user = User.new
user.email = 'valoch@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Valoch"
user.username = "valoch"
user.total_goals = 35
user.total_against_goals = 25
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'benito@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Benito"
user.username = "benito"
user.total_goals = 30
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'arno@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Arno"
user.username = "nono"
user.total_goals = 20
user.total_against_goals = 30
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'jean@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Jean"
user.username = "jeanno"
user.total_goals = 10
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'julien@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "Julien"
user.username = "jujulien"
user.total_goals = 35
user.total_against_goals = 11
user.won_tournaments = 1
user.save!

user = User.new
user.email = 'marc@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "marc"
user.username = "marco"
user.total_goals = 25
user.total_against_goals = 25
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'franck@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "franck"
user.username = "franckycbon"
user.total_goals = 2
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'jacob@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "jacob"
user.username = "jacobin"
user.total_goals = 27
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'mohamed@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "mohamed"
user.username = "momo"
user.total_goals = 39
user.total_against_goals = 10
user.won_tournaments = 1
user.save!

user = User.new
user.email = 'alexandre@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "alexandre"
user.username = "alex1"
user.total_goals = 8
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'claire@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "claire"
user.username = "clairon"
user.total_goals = 14
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'clara@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "clara"
user.username = "clarachou"
user.total_goals = 15
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'eleonore@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "eleonore"
user.username = "eleo"
user.total_goals = 12
user.total_against_goals = 35
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'alexis@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "alexis"
user.username = "alex2"
user.total_goals = 15
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'mathieu@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "mathieu"
user.username = "matmat"
user.total_goals = 16
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'germain@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "germain"
user.username = "germanou"
user.total_goals = 6
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'juliette@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "juliette"
user.username = "jujuliette"
user.total_goals = 11
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'tom@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "tatiana"
user.username = "tomitom"
user.total_goals = 13
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'clement@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "clement"
user.username = "clementin"
user.total_goals = 10
user.total_against_goals = 8
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'greg@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "greg"
user.username = "fudo"
user.total_goals = 2
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'thomas@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "thomas"
user.username = "tomtomgo"
user.total_goals = 5
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'sylvain@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "sylvain"
user.username = "sysyl"
user.total_goals = 8
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'axel@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "axel"
user.username = "axelred"
user.total_goals = 13
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'nolan@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "nolan"
user.username = "nonodu92"
user.total_goals = 11
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'victor@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "victor"
user.username = "victorhugo"
user.total_goals = 7
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'come@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "come"
user.username = "lacdecome"
user.total_goals = 13
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'alexia@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "alexia"
user.username = "alexiadujardin"
user.total_goals = 11
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'simon@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "simon"
user.username = "simonette"
user.total_goals = 17
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'jesus@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "jesus"
user.username = "jesus"
user.total_goals = 14
user.total_against_goals = 13
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'mathis@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "mathis"
user.username = "lionelmathis"
user.total_goals = 11
user.total_against_goals = 9
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'samuel@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "samuel"
user.username = "samsoung"
user.total_goals = 20
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'marius@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "marius"
user.username = "mariusfildentaire"
user.total_goals = 14
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'noah@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "noah"
user.username = "yannicknoah"
user.total_goals = 6
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'maxens@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "maxens"
user.username = "maxenscornet"
user.total_goals = 9
user.total_against_goals = 15
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'romain@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "romain"
user.username = "romano"
user.total_goals = 2
user.total_against_goals = 35
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'boris@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "boris"
user.username = "borisbreakdance"
user.total_goals = 1
user.total_against_goals = 40
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'hugo@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "hugo"
user.username = "hugopasvictor"
user.total_goals = 9
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'leo@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "leo"
user.username = "leomessi"
user.total_goals = 20
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'nathan@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "nathan"
user.username = "nathanfake"
user.total_goals = 7
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'gabin@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "gabin"
user.username = "jeangabin"
user.total_goals = 23
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'paul@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "paul"
user.username = "pauldu17"
user.total_goals = 9
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'quentin@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "quentin"
user.username = "quentinlephalique"
user.total_goals = 9
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'matheo@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "matheo"
user.username = "matheodimeco"
user.total_goals = 11
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'evan@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "evan"
user.username = "evanmcgregor"
user.total_goals = 14
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'florian@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "florian"
user.username = "florianphilippot"
user.total_goals = 15
user.total_against_goals = 13
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'corentin@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "corentin"
user.username = "corentindugenou"
user.total_goals = 6
user.total_against_goals = 10
user.won_tournaments = 0
user.save!

user = User.new
user.email = 'killian@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "killian"
user.username = "killianmbape"
user.total_goals = 12
user.total_against_goals = 12
user.won_tournaments = 0
user.save!

# Bar creation:

bar1 = Bar.create(address: "16 Villa Gaudelet 75011 Paris", name: "Le Wagon", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", description: "Bar chaleureux et amical tenu par deux anciens fêtards")
bar2 = Bar.create(address: "12 rue Claude Pouillet 75017 Paris", name: "Chez Pater", tv_number: 8, tournament_size: 16, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
bar3 = Bar.create(address: "10 rue Quincampoix 75004 Paris", name: "Le Demory", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
bar4 = Bar.create(address: "1 rue de la Pompe 75016 Paris", name: "La Cantoche", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

bar5 = Bar.create(address: "14 rue de la tour 75016", name: "Le player", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", description: "Bar chaleureux et amical tenu par deux anciens fêtards")
bar6 = Bar.create(address: "17 rue de Rivoli 75001 Paris", name: "Au bernacle", tv_number: 8, tournament_size: 16, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
bar7 = Bar.create(address: "53 avenue Henri Martin 75016 Paris", name: "L'idiot", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
bar8 = Bar.create(address: "45 rue Levy 75017 Paris", name: "La grande carotte", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

bar9 = Bar.create(address: "67 rue Myrha 75018 Paris", name: "Chez Olive", tv_number: 8, tournament_size: 32, phone_number: "01.23.54.93.82", description: "Bar chaleureux et amical tenu par deux anciens fêtards")
bar10 = Bar.create(address: "34 boulveard Rochechouart 75018 Paris", name: "A l'archer", tv_number: 8, tournament_size: 32, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
bar11 = Bar.create(address: "45 rue des Martyr 75018 Paris", name: "Le grand vaillant", tv_number: 8, tournament_size: 32, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
bar12 = Bar.create(address: "56 rue Oberkampf 75011 Paris", name: "La truffe bleue", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

bar13 = Bar.create(address: "34 rue Erlanger 75016 Paris", name: "Le Wagon", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", description: "Bar chaleureux et amical tenu par deux anciens fêtards")
bar14 = Bar.create(address: "67 avenue de la République 75010 Paris", name: "Chez Genou", tv_number: 8, tournament_size: 16, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
bar15 = Bar.create(address: "67 rue d'Assas 75006 Paris", name: "Le francais", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
bar16 = Bar.create(address: "1 rue de la Pompe", name: "La vielle charette", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

bar17 = Bar.create(address: "45 rue de Grenelle 75015 Paris", name: "Le sans-alcool", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", description: "Bar chaleureux et amical tenu par deux anciens fêtards")
bar18 = Bar.create(address: "75 avenue Théophile Gauthier 75016 Paris", name: "Chez les alcooliques", tv_number: 8, tournament_size: 16, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
bar19 = Bar.create(address: "34 rue de Passy 75016 Paris", name: "A l'endive rose", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
bar20 = Bar.create(address: "89 avenue des Champs-Elysees 75008 Paris", name: "Au distrib", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

bar21 = Bar.create(address: "20 avenue des Marroniers 75016 Paris", name: "La grande fraicheur", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", description: "Bar chaleureux et amical tenu par deux anciens fêtards")
bar22 = Bar.create(address: "12 rue Claude Pouillet", name: "Au navet", tv_number: 8, tournament_size: 32, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
bar23 = Bar.create(address: "34 rue Réaumur 75002 Paris", name: "Au gigolo", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
bar24 = Bar.create(address: "89 Avenue de l'Opéra 75002 Paris", name: "A la bonne franquette", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

bar25 = Bar.create(address: "102 rue de Vaugirard 75006 Paris", name: "A l'urne", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", description: "Bar chaleureux et amical tenu par deux anciens fêtards")
bar26 = Bar.create(address: "45 rue Falguière 75015 Paris", name: "Au clair de la lune", tv_number: 8, tournament_size: 16, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
bar27 = Bar.create(address: "12 avenue de Choisy 75013 Paris", name: "Le Boris", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
bar28 = Bar.create(address: "7 rue Lacépède 75005 Paris", name: "La villageoise", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

bar29 = Bar.create(address: "9 rue Guynemer 75006 Paris", name: "Chez Jeannot", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.82", description: "Bar chaleureux et amical tenu par deux anciens fêtards")
bar30 = Bar.create(address: "3 rue Petrelle 75018 Paris", name: "Au deux ancêtres", tv_number: 8, tournament_size: 16, phone_number: "01.23.34.93.12", description: "Endroit calme et sympa dans un lieu atypique")
bar31 = Bar.create(address: "8 rue Portails 75008 Paris", name: "Le Sans-Calin", tv_number: 2, tournament_size: 8, phone_number: "01.23.54.93.82", description: "Bar jovial tenu par des joyeux lurons")
bar32 = Bar.create(address: "17 rue Roquépine 75008 Paris", name: "La Piscine", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")
bar33 = Bar.create(address: "17 rue Roquépine 75008 Paris", name: "La Piscine", tv_number: 4, tournament_size: 16, phone_number: "01.23.54.93.11", description: "Idéal aussi si vous avez un petit creux")

url = "http://res.cloudinary.com/dutc7zz18/image/list/bar.json"
    my_json = JSON.parse(open(url).read)
    resources = my_json["resources"]
    ids = resources.map {|res| res["public_id"]}

ids.each_with_index do |id, index|
  bar = Bar.find(index + 1)
  bar.photo = id
  bar.save!
end

# Availabilities -

Availability.create(start_day: DateTime.new(2017,6,22), end_day: DateTime.new(2017,6,25), bar: bar1)
Availability.create(start_day: DateTime.new(2017,6,1), end_day: DateTime.new(2017,6,30), bar: bar2)
Availability.create(start_day: DateTime.new(2017,6,10), end_day: DateTime.new(2017,6,29), bar: bar3)
Availability.create(start_day: DateTime.new(2017,5,11), end_day: DateTime.new(2017,5,31), bar: bar4)

Availability.create(start_day: DateTime.new(2017,6,2), end_day: DateTime.new(2017,6,27), bar: bar5)
Availability.create(start_day: DateTime.new(2017,5,10), end_day: DateTime.new(2017,6,30), bar: bar6)
Availability.create(start_day: DateTime.new(2017,6,1), end_day: DateTime.new(2017,6,30), bar: bar7)
Availability.create(start_day: DateTime.new(2017,5,11), end_day: DateTime.new(2017,6,18), bar: bar8)

Availability.create(start_day: DateTime.new(2017,6,1), end_day: DateTime.new(2017,6,25), bar: bar9)
Availability.create(start_day: DateTime.new(2017,6,2), end_day: DateTime.new(2017,6,30), bar: bar10)
Availability.create(start_day: DateTime.new(2017,6,3), end_day: DateTime.new(2017,6,21), bar: bar11)
Availability.create(start_day: DateTime.new(2017,6,4), end_day: DateTime.new(2017,6,22), bar: bar12)

Availability.create(start_day: DateTime.new(2017,6,1), end_day: DateTime.new(2017,6,15), bar: bar13)
Availability.create(start_day: DateTime.new(2017,6,5), end_day: DateTime.new(2017,6,21), bar: bar14)
Availability.create(start_day: DateTime.new(2017,6,9), end_day: DateTime.new(2017,6,30), bar: bar15)
Availability.create(start_day: DateTime.new(2017,6,10), end_day: DateTime.new(2017,6,21), bar: bar16)

Availability.create(start_day: DateTime.new(2017,6,7), end_day: DateTime.new(2017,6,30), bar: bar17)
Availability.create(start_day: DateTime.new(2017,6,7), end_day: DateTime.new(2017,6,30), bar: bar18)
Availability.create(start_day: DateTime.new(2017,6,8), end_day: DateTime.new(2017,6,15), bar: bar19)
Availability.create(start_day: DateTime.new(2017,6,3), end_day: DateTime.new(2017,6,16), bar: bar20)

Availability.create(start_day: DateTime.new(2017,6,7), end_day: DateTime.new(2017,6,30), bar: bar21)
Availability.create(start_day: DateTime.new(2017,6,7), end_day: DateTime.new(2017,6,30), bar: bar22)
Availability.create(start_day: DateTime.new(2017,6,8), end_day: DateTime.new(2017,6,30), bar: bar23)
Availability.create(start_day: DateTime.new(2017,6,3), end_day: DateTime.new(2017,6,30), bar: bar24)



# Tournaments

tournament1 = Tournament.create!(step: "group", date: DateTime.new(2017,6,15), number_players: 16, status: "pending", number_consoles: 4, number_controllers: 8, number_games: 4, tournament_type: "medium", bar: bar3, user_id: 5)
tournament2 = Tournament.create!(step: "group", date: DateTime.new(2017,6,10), number_players: 16, status: "pending", number_consoles: 4, number_controllers: 8, number_games: 4, tournament_type: "medium", bar: bar6, user_id: 22)
tournament3 = Tournament.create!(step: "group", date: DateTime.new(2017,6,12), number_players: 32, status: "pending", number_consoles: 8, number_controllers: 16, number_games: 8, tournament_type: "large", bar: bar9, user_id: 14)
tournament4 = Tournament.create!(step: "group", date: DateTime.new(2017,6,8), number_players: 8, status: "pending", number_consoles: 2, number_controllers: 4, number_games: 2, tournament_type: "small", bar: bar1, user_id: 3)

# # Tournaments replicated
tournament5 = Tournament.create!(step: "group", date: DateTime.new(2017,6,12), number_players: 16, status: "pending", number_consoles: 4, number_controllers: 8, number_games: 4, tournament_type: "medium", bar: bar20, user_id: 12)
tournament6 = Tournament.create!(step: "group", date: DateTime.new(2017,6,13), number_players: 16, status: "pending", number_consoles: 4, number_controllers: 8, number_games: 4, tournament_type: "medium", bar: bar5, user_id: 15)
tournament7 = Tournament.create!(step: "group", date: DateTime.new(2017,6,15), number_players: 16, status: "pending", number_consoles: 4, number_controllers: 8, number_games: 4, tournament_type: "medium", bar: bar14, user_id: 4)
tournament8 = Tournament.create!(step: "group", date: DateTime.new(2017,6,9), number_players: 8, status: "ready", number_consoles: 2, number_controllers: 4, number_games: 2, tournament_type: "small", bar: bar12, user_id: 7)

tournament9 = Tournament.create!(step: "group", date: DateTime.new(2017,6,15), number_players: 32, status: "pending", number_consoles: 8, number_controllers: 16, number_games: 8, tournament_type: "large", bar: bar10, user_id: 28)
tournament10 = Tournament.create!(step: "group", date: DateTime.new(2017,6,21), number_players: 8, status: "pending", number_consoles: 2, number_controllers: 4, number_games: 2, tournament_type: "small", bar: bar23, user_id: 27)
tournament11 = Tournament.create!(step: "group", date: DateTime.new(2017,6,16), number_players: 16, status: "pending", number_consoles: 4, number_controllers: 8, number_games: 4, tournament_type: "medium", bar: bar16, user_id: 7)
tournament12 = Tournament.create!(step: "group", date: DateTime.new(2017,6,18), number_players: 8, status: "pending", number_consoles: 2, number_controllers: 4, number_games: 2, tournament_type: "small", bar: bar15, user_id: 10)
tournament13 = Tournament.create!(step: "group", date: DateTime.new(2017,6,20), number_players: 16, status: "pending", number_consoles: 4, number_controllers: 8, number_games: 4, tournament_type: "medium", bar: bar26, user_id: 15)
tournament14 = Tournament.create!(step: "group", date: DateTime.new(2017,6,19), number_players: 32, status: "pending", number_consoles: 8, number_controllers: 16, number_games: 8, tournament_type: "large", bar: bar11, user_id: 8)





# Players - for tournaments

# # tournament id=1 : 16 players / status: pending
Player.create(user_id: 5, admin: true, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 1, club: "Liverpool")
Player.create(user_id: 1, admin: false, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Bastia")
Player.create(user_id: 2, admin: false, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 1, club: "Nancy")
Player.create(user_id: 3, admin: false, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Lyon")
Player.create(user_id: 4, admin: false, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Marseille")
Player.create(user_id: 6, admin: false, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Chelsea")
Player.create(user_id: 7, admin: false, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Monaco")
Player.create(user_id: 8, admin: false, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 9, admin: false, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 3, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "ManchesterCity")
Player.create(user_id: 10, admin: false, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Lorient")
Player.create(user_id: 11, admin: false, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Lyon")
Player.create(user_id: 12, admin: false, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Bordeaux")
Player.create(user_id: 13, admin: false, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Burnley")
Player.create(user_id: 14, admin: false, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Arsenal")
Player.create(user_id: 15, admin: false, tournament: tournament1, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Paris-SG")
# #  tournament itournamentd=2 : 16 players / status pending
Player.create(user_id: 22, admin: true, tournament: tournament2, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterCity")
Player.create(user_id: 17, admin: false, tournament: tournament2, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Bastia")
Player.create(user_id: 18, admin: false, tournament: tournament2, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Nancy")
Player.create(user_id: 19, admin: false, tournament: tournament2, ps4: true, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Lyon")
Player.create(user_id: 20, admin: false, tournament: tournament2, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Chelsea")
Player.create(user_id: 21, admin: false, tournament: tournament2, ps4: false, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Paris-SG")
Player.create(user_id: 23, admin: false, tournament: tournament2, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 24, admin: false, tournament: tournament2, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Bordeaux")
Player.create(user_id: 25, admin: false, tournament: tournament2, ps4: false, xbox: true, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Lyon")
Player.create(user_id: 1, admin: false, tournament: tournament2, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Arsenal")
Player.create(user_id: 2, admin: false, tournament: tournament2, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Rennes")
Player.create(user_id: 3, admin: false, tournament: tournament2, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Middlesbrough")
# #  tournament itournamentd=3 : 16 players / status pending
Player.create(user_id: 14, admin: true, tournament: tournament3, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 1, fifa_game_ps4: 0, fifa_game_xbox:0, club: "Paris-SG")
Player.create(user_id: 8, admin: false, tournament: tournament3, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nice")
Player.create(user_id: 9, admin: false, tournament: tournament3, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 1, club: "Southampton")
Player.create(user_id: 10, admin: false, tournament: tournament3, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Stoke")
Player.create(user_id: 11, admin: false, tournament: tournament3, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 12, admin: false, tournament: tournament3, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Tottenham")
Player.create(user_id: 13, admin: false, tournament: tournament3, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 15, admin: false, tournament: tournament3, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 16, admin: false, tournament: tournament3, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Nancy")
Player.create(user_id: 17, admin: false, tournament: tournament3, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Bordeaux")
Player.create(user_id: 18, admin: false, tournament: tournament3, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Monaco")
Player.create(user_id: 19, admin: false, tournament: tournament3, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Chelsea")
Player.create(user_id: 20, admin: false, tournament: tournament3, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Arsenal")
# #  tournament itournamentd=4 : 8 players / status ready / full
Player.create(user_id: 4, admin: true, tournament: tournament4, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 21, admin: false, tournament: tournament4, ps4: true, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Monaco")
Player.create(user_id: 22, admin: false, tournament: tournament4, ps4: false, xbox: true, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 23, admin: false, tournament: tournament4, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 5, admin: false, tournament: tournament4, ps4: true, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Chelsea")
Player.create(user_id: 6, admin: false, tournament: tournament4, ps4: false, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nice")
Player.create(user_id: 7, admin: false, tournament: tournament4, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nancy")
# Player.create(user_id: 16, admin: false, tournament: tournament4, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Paris-SG")
##  Tournament id= 5
Player.create(user_id: 12, admin: true, tournament: tournament5, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 21, admin: false, tournament: tournament5, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Monaco")
Player.create(user_id: 22, admin: false, tournament: tournament5, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 23, admin: false, tournament: tournament5, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 5, admin: false, tournament: tournament5, ps4: true, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Chelsea")
Player.create(user_id: 6, admin: false, tournament: tournament5, ps4: false, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nice")
Player.create(user_id: 7, admin: false, tournament: tournament5, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nancy")
Player.create(user_id: 16, admin: false, tournament: tournament5, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Paris-SG")
Player.create(user_id: 27, admin: false, tournament: tournament5, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Monaco")
Player.create(user_id: 31, admin: false, tournament: tournament5, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 24, admin: false, tournament: tournament5, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 4, admin: false, tournament: tournament5, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
##  Tournament id= 6
Player.create(user_id: 15, admin: true, tournament: tournament6, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 21, admin: false, tournament: tournament6, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Monaco")
Player.create(user_id: 22, admin: false, tournament: tournament6, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 23, admin: false, tournament: tournament6, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 5, admin: false, tournament: tournament6, ps4: true, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Chelsea")
Player.create(user_id: 6, admin: false, tournament: tournament6, ps4: false, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nice")
Player.create(user_id: 7, admin: false, tournament: tournament6, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nancy")
Player.create(user_id: 16, admin: false, tournament: tournament6, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Paris-SG")
Player.create(user_id: 1, admin: false, tournament: tournament6, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Monaco")
Player.create(user_id: 2, admin: false, tournament: tournament6, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 3, admin: false, tournament: tournament6, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 4, admin: false, tournament: tournament6, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 8, admin: false, tournament: tournament6, ps4: true, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Chelsea")
Player.create(user_id: 9, admin: false, tournament: tournament6, ps4: false, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nice")
Player.create(user_id: 10, admin: false, tournament: tournament6, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nancy")
Player.create(user_id: 14, admin: false, tournament: tournament6, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Paris-SG")

##  Tournament id= 7
Player.create(user_id: 4, admin: true, tournament: tournament7, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 21, admin: false, tournament: tournament7, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Monaco")
Player.create(user_id: 22, admin: false, tournament: tournament7, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 23, admin: false, tournament: tournament7, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 5, admin: false, tournament: tournament7, ps4: true, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Chelsea")
Player.create(user_id: 6, admin: false, tournament: tournament7, ps4: false, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nice")
Player.create(user_id: 7, admin: false, tournament: tournament7, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nancy")
Player.create(user_id: 16, admin: false, tournament: tournament7, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Paris-SG")

##  Tournament id= 8
Player.create(user_id: 7, admin: true, tournament: tournament8, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 21, admin: false, tournament: tournament8, ps4: false, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Monaco")
Player.create(user_id: 22, admin: false, tournament: tournament8, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 23, admin: false, tournament: tournament8, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 5, admin: false, tournament: tournament8, ps4: true, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Chelsea")
Player.create(user_id: 6, admin: false, tournament: tournament8, ps4: false, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nice")
Player.create(user_id: 10, admin: false, tournament: tournament8, ps4: true, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nancy")
Player.create(user_id: 16, admin: false, tournament: tournament8, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Paris-SG")
##  Tournament id= 9
Player.create(user_id: 28, admin: true, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 31, admin: false, tournament: tournament9, ps4: true, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Monaco")
Player.create(user_id: 30, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 29, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 27, admin: false, tournament: tournament9, ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Chelsea")
Player.create(user_id: 26, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nice")
Player.create(user_id: 25, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nancy")
Player.create(user_id: 24, admin: false, tournament: tournament9, ps4: true, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Paris-SG")
Player.create(user_id: 23, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Monaco")
Player.create(user_id: 22, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 21, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 20, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 19, admin: false, tournament: tournament9, ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Chelsea")
Player.create(user_id: 18, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nice")
Player.create(user_id: 17, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nancy")
Player.create(user_id: 16, admin: false, tournament: tournament9, ps4: true, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Paris-SG")
Player.create(user_id: 15, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Monaco")
Player.create(user_id: 14, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 13, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 12, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 11, admin: false, tournament: tournament9, ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Chelsea")
Player.create(user_id: 10, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nice")
Player.create(user_id: 9, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nancy")
Player.create(user_id: 8, admin: false, tournament: tournament9, ps4: true, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Paris-SG")
Player.create(user_id: 32, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 2, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
# Player.create(user_id: 3, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
# Player.create(user_id: 4, admin: false, tournament: tournament9, ps4: true, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Chelsea")
# Player.create(user_id: 5, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 2, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nice")
# Player.create(user_id: 6, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nancy")
# Player.create(user_id: 7, admin: false, tournament: tournament9, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Paris-SG")
##  Tournament id= 10
Player.create(user_id: 27, admin: true, tournament: tournament10, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 21, admin: false, tournament: tournament10, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Monaco")
Player.create(user_id: 22, admin: false, tournament: tournament10, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 23, admin: false, tournament: tournament10, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 5, admin: false, tournament: tournament10, ps4: true, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Chelsea")
Player.create(user_id: 6, admin: false, tournament: tournament10, ps4: false, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nice")
Player.create(user_id: 7, admin: false, tournament: tournament10, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nancy")
##  Tournament id= 11
Player.create(user_id: 7, admin: true, tournament: tournament11, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 16, admin: false, tournament: tournament11, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Monaco")
Player.create(user_id: 17, admin: false, tournament: tournament11, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 18, admin: false, tournament: tournament11, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
##  Tournament id= 12
Player.create(user_id: 10, admin: true, tournament: tournament12, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Monaco")
##  Tournament id= 13
Player.create(user_id: 15, admin: true, tournament: tournament13, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 12, admin: false, tournament: tournament13, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Monaco")
Player.create(user_id: 13, admin: false, tournament: tournament13, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 14, admin: false, tournament: tournament13, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 2, admin: false, tournament: tournament13, ps4: true, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Chelsea")
Player.create(user_id: 3, admin: false, tournament: tournament13, ps4: false, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nice")
Player.create(user_id: 4, admin: false, tournament: tournament13, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nancy")
Player.create(user_id: 7, admin: false, tournament: tournament13, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Paris-SG")
Player.create(user_id: 9, admin: false, tournament: tournament13, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Monaco")
Player.create(user_id: 22, admin: false, tournament: tournament13, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 23, admin: false, tournament: tournament13, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
##  Tournament id= 14
Player.create(user_id: 8, admin: true, tournament: tournament14, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 6, admin: false, tournament: tournament14, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Monaco")
Player.create(user_id: 10, admin: false, tournament: tournament14, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 14, admin: false, tournament: tournament14, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")
Player.create(user_id: 23, admin: false, tournament: tournament14, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "ManchesterUnited")
Player.create(user_id: 28, admin: false, tournament: tournament14, ps4: true, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Chelsea")
Player.create(user_id: 14, admin: false, tournament: tournament14, ps4: false, xbox: false, controller_ps4: 1, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nice")
Player.create(user_id: 5, admin: false, tournament: tournament14, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Nancy")
Player.create(user_id: 11, admin: false, tournament: tournament14, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Paris-SG")
Player.create(user_id: 21, admin: false, tournament: tournament14, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 1, club: "Monaco")
Player.create(user_id: 22, admin: false, tournament: tournament14, ps4: false, xbox: true, controller_ps4: 0, controller_xbox: 2, fifa_game_ps4: 1, fifa_game_xbox: 0, club: "Swansea")
Player.create(user_id: 26, admin: false, tournament: tournament14, ps4: false, xbox: false, controller_ps4: 0, controller_xbox: 0, fifa_game_ps4: 0, fifa_game_xbox: 0, club: "Toulouse")












