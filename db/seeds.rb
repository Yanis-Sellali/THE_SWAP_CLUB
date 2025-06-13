# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "open-uri"
# Example:
# Team.destroy_all
Exchange.destroy_all
User.destroy_all
Team.destroy_all
Jersey.destroy_all
# TEAMS
team1 = Team.create!(
  name: "PSG",
  country: "France",
  logo: "psg.png",
  description: "Le Paris Saint-Germain (PSG), couramment abrégé en Paris-SG, est un club de football français fondé en 1970. Il est basé à Paris et évolue à domicile au Parc des Princes, un stade de 48 583 places. Le club est connu pour être une puissance dominante du football français depuis son rachat en 2011 par QSI et pour avoir recruté des joueurs de renommée mondiale.",
  background_image: "psg.jpg"
)

team2 = Team.create!(
  name: "Real Madrid",
  country: "Espagne",
  logo: "real-madrid.png",
  description: "Le Real Madrid, fondé en 1902, est l'un des clubs les plus titrés au monde. Basé à Madrid, il évolue au stade Santiago-Bernabéu et est reconnu pour son palmarès exceptionnel en Liga et en Ligue des Champions.",
  background_image: "real-madrid.jpg"
)
team3 = Team.create!(
name: "liverpool",
country: "Angleterre",
logo: "liverpool.png",
description: "Liverpool FC, fondé en 1892, est l’un des clubs les plus emblématiques d’Angleterre. Il joue à Anfield, célèbre pour son atmosphère unique, et possède un palmarès riche en titres nationaux et européens.",
background_image: "liverpool.jpg")

team4 = Team.create!(
name: "AC Milan",
country: "Italie",
logo: "ac-milan.png",
description: "L’AC Milan, fondé en 1899, est un pilier du football italien. Basé à San Siro, le club est reconnu pour son style élégant et ses nombreux titres en Serie A et en Ligue des Champions.",
background_image: "ac-milan.jpg"
)

team5 = Team.create!(
name: "Manchester City",
country: "Angleterre",
logo: "manchester-city.png",
description: "Manchester City, fondé en 1880, s’est imposé comme une puissance majeure du football moderne. Le club évolue à l’Etihad Stadium et est connu pour son style de jeu offensif et ses nombreux titres récents en Premier League.",
background_image: "manchester.jpg"
)

team6 = Team.create!(
name: "Bayern Munich",
country: "Allemagne",
logo: "bayern-munich.png",
description: "Le Bayern Munich, fondé en 1900, est le club le plus titré d’Allemagne. Il évolue à l’Allianz Arena et est réputé pour sa domination en Bundesliga et son héritage européen impressionnant.",
background_image: "bayern-munich.jpg"
)

team7 = Team.create!(
name: "Barcelona",
country: "Espagne",
logo: "barcelona.jpg",
description: "Le FC Barcelone, fondé en 1899, est un symbole du football espagnol. Connu pour son style de jeu basé sur la possession, le club évolue au Camp Nou et a marqué l’histoire avec ses nombreux titres en Liga et en Europe.",
background_image: "barcelona.png"
)

team8 = Team.create!(
name: "Juventus",
country: "Italie",
logo: "juventus.png",
description: "La Juventus, fondée en 1897 à Turin, est le club le plus titré d’Italie. Elle joue au stade Allianz et est connue pour sa solidité défensive, son palmarès exceptionnel et ses grandes légendes du calcio.",
background_image: "juventus.jpg"
)

team9 = Team.create!(
name: "Inter Milan",
country: "Italie",
logo: "inter-milan.png",
description: "L’Inter Milan, fondé en 1908, est l’un des clubs les plus prestigieux d’Italie. Il joue au stade San Siro et s’est illustré par ses nombreux titres en Serie A et en compétitions européennes.",
background_image:"inter-milan.jpg"
)

team10 = Team.create!(
name: "Chelsea",
country: "Angleterre",
logo: "chelsea.png",
description: "Chelsea FC, fondé en 1905, est un club emblématique de Londres. Il évolue à Stamford Bridge et s’est forgé un palmarès impressionnant en Premier League et en compétitions européennes ces dernières décennies.",
background_image: "chelsea.jpg"
)

# USERS
user1 = User.create!(
  email: "david.b@example.com",
  password: "password",
  password_confirmation: "password",
  nom: "David B",
  localisation: "Paris",
  rating: 5
)

user2 = User.create!(
  email: "clarence@example.com",
  password: "password",
  password_confirmation: "password",
  nom: "Clarence S",
  localisation: "Milan",
  rating: 4
)

user3 = User.create!(
  email: "desire.doue@example.com",
  password: "password",
  password_confirmation: "password",
  nom: "Desire Doue",
  localisation: "Paris",
  rating: 3
)

# JERSEYS

jersey = Jersey.new(
  name: "PSG Home Jersey",
  flocking: "Mbappe",
  year: 2023,
  description: "Official PSG home jersey for the 2023 season.",
  user_id: user1.id,
  team_id: team1.id,
  size: "L",
  condition: "New"
)
image_path = Rails.root.join("app/assets/images/jersey-psg-home-2023-mbappe.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-psg-home-2023-mbappe.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
name: "Real Madrid Away Jersey",
flocking: "Benzema",
year: 2023,
description: "Official Real Madrid away jersey for the 2023 season.",
user_id: user2.id,
team_id: team2.id,
size: "M",
condition: "Used"
)
image_path = Rails.root.join("app/assets/images/jersey-realmadrid-away-2023-benzema.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-realmadrid-away-2023-benzema.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
name: "Liverpool Home Jersey",
flocking: "Salah",
year: 2023,
description: "Official Liverpool home jersey for the 2023 season.",
user_id: user3.id,
team_id: team3.id,
size: "XL",
condition: "New"
)
image_path = Rails.root.join("app/assets/images/jersey-liverpool-home-2023-salah.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-liverpool-home-2023-salah.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
name: "AC Milan Home Jersey",
flocking: "Leao",
year: 2024,
description: "Official AC Milan home jersey for the 2024 season.",
user_id: user1.id,
team_id: team4.id,
size: "L",condition: "Used"
)
image_path = Rails.root.join("app/assets/images/jersey-acmilan-home-2024-leao.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-acmilan-home-2024-leao.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
name: "Manchester City Home Jersey",
flocking: "Haaland",
year: 2023,
description: "Official Manchester City home jersey for the 2023 season.",
user_id: user2.id,
team_id: team5.id,
size: "M",
condition: "New"
)
image_path = Rails.root.join("app/assets/images/jersey-mancity-home-2023-haaland.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-mancity-home-2023-haaland.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
name: "Bayern Munich Away Jersey",
flocking: "Muller",
year: 2023,
description: "Official Bayern Munich away jersey for the 2023 season.",
user_id: user3.id,
team_id: team6.id,
size: "L",
condition: "Used"
)
image_path = Rails.root.join("app/assets/images/jersey-bayernmunich-away-2023-muller.jpeg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-bayernmunich-away-2023-muller.jpg", content_type: "image/jpeg")
jersey.save!

jersey = Jersey.new(
name: "Barcelona Home Jersey",
flocking: "Lewandowski",
year: 2023,
description: "Official Barcelona home jersey for the 2023 season.",
user_id: user1.id,
team_id: team7.id,
size: "M",
condition: "New"
)
image_path = Rails.root.join("app/assets/images/jersey-barca-home-2023-lewandowski.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-barca-home-2023-lewandowski.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
name: "Juventus Away Jersey",
flocking: "Vlahovic",
year: 2023,
description: "Official Juventus away jersey for the 2023 season.",
user_id: user2.id,
team_id: team8.id,
size: "XL",
condition: "Used"
)
image_path = Rails.root.join("app/assets/images/jersey-juventus-away-2023-vlahovic.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-juventus-away-2023-vlahovic.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
name: "PSG Third Jersey",
flocking: "Neymar",
year: 2023,
description: "Official PSG third jersey for the 2023 season.",
user_id: user2.id,
team_id: team1.id,
size: "L",
condition: "New"
)
image_path = Rails.root.join("app/assets/images/jersey-psg-third-2023-neymar.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-psg-third-2023-neymar.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
name: "Real Madrid Home Jersey",
flocking: "Vinicius Jr.",
year: 2023,
description: "Official Real Madrid home jersey for the 2023 season.",
user_id: user3.id,
team_id: team2.id,
size: "M",
condition: "Used"
)
image_path = Rails.root.join("app/assets/images/jersey-realmadrid-home-2023-vinicius.jpeg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-realmadrid-home-2023-vinicius.jpeg", content_type: "image/jpeg")
jersey.save!

jersey = Jersey.new(
name: "Liverpool Away Jersey",
flocking: "Van Dijk",
year: 2019,
description: "Official Liverpool third jersey for the 2023 season.",
user_id: user1.id,
team_id: team3.id,
size: "XL",
condition: "New"
)
image_path = Rails.root.join("app/assets/images/jersey-liverpool-third-2019-virgil.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-liverpool-third-2019-virgil.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
name: "Inter Milan home Jersey",
flocking: "Thuram",
year: 2010,
description: "Official Inter Milan away jersey for the 2023 season.",
user_id: user1.id,
team_id: team9.id,
size: "L",
condition: "New"
)
image_path = Rails.root.join("app/assets/images/jersey-intermilan-home-2023-thuram.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-intermilan-home-2023-thuram.jpg", content_type: "image/jpg")
jersey.save!
