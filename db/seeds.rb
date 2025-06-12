# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
Team.destroy_all
User.destroy_all
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
  description:"Le Real Madrid, fondé en 1902, est l'un des clubs les plus titrés au monde. Basé à Madrid, il évolue au stade Santiago-Bernabéu et est reconnu pour son palmarès exceptionnel en Liga et en Ligue des Champions.",
  background_image: "real-madrid.jpg"
)

team3 = Team.create!(
  name: "liverpool",
  country: "Angleterre",
  logo: "liverpool.png",
  description: "Liverpool FC, fondé en 1892, est l’un des clubs les plus emblématiques d’Angleterre. Il joue à Anfield, célèbre pour son atmosphère unique, et possède un palmarès riche en titres nationaux et européens.",
  background_image: "liverpool.jpg"
)

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
jersey1 = Jersey.create!(
  name: "PSG Home Jersey",
  flocking: "Mbappe",
  year: 2023,
  description: "Official PSG home jersey for the 2023 season.",
  image: "jersey-psg-home-2023-mbappe.jpg",
  user: user1,
  team: team1,
  size: "L",
  condition: "New"
)

jersey2 = Jersey.create!(
  name: "Real Madrid Away Jersey",
  flocking: "Benzema",
  year: 2023,
  description: "Official Real Madrid away jersey for the 2023 season.",
  image: "jersey-realmadrid-away-2023-benzema.jpg",
  user: user2,
  team: team2,
  size: "M",
  condition: "Used"
)

jersey3 = Jersey.create!(
  name: "Liverpool Home Jersey",
  flocking: "Salah",
  year: 2023,
  description: "Official Liverpool home jersey for the 2023 season.",
  image: "jersey-liverpool-home-2023-salah.jpg",
  user: user3,
  team: team3,
  size: "XL",
  condition: "New"
)
jersey4 = Jersey.create!(
  name: "AC Milan Home Jersey",
  flocking: "Leao",
  year: 2024,
  description: "Official AC Milan home jersey for the 2024 season.",
  image: "jersey-acmilan-home-2024-leao.jpg",
  user: user1,
  team: team4,
  size: "L",
  condition: "Used"
)

jersey5 = Jersey.create!(
  name: "Manchester City Home Jersey",
  flocking: "Haaland",
  year: 2023,
  description: "Official Manchester City home jersey for the 2023 season.",
  image: "jersey-mancity-home-2023-haaland.jpg",
  user: user2,
  team: team5,
  size: "M",
  condition: "New"
)

jersey6 = Jersey.create!(
  name: "Bayern Munich Away Jersey",
  flocking: "Muller",
  year: 2023,
  description: "Official Bayern Munich away jersey for the 2023 season.",
  image: "jersey-bayernmunich-away-2023-muller.jpeg",
  user: user3,
  team: team6,
  size: "L",
  condition: "Used"
)

jersey7 = Jersey.create!(
  name: "Barcelona Home Jersey",
  flocking: "Lewandowski",
  year: 2023,
  description: "Official Barcelona home jersey for the 2023 season.",
  image: "jersey-barca-home-2023-lewandowski.jpg",
  user: user1,
  team: team7,
  size: "M",
  condition: "New"
)

jersey8 = Jersey.create!(
  name: "Juventus Away Jersey",
  flocking: "Vlahovic",
  year: 2023,
  description: "Official Juventus away jersey for the 2023 season.",
  image: "jersey-juventus-away-2023-vlahovic.jpg",
  user: user2,
  team: team8,
  size: "XL",
  condition: "Used"
)

jersey11 = Jersey.create!(
  name: "PSG Third Jersey",
  flocking: "Neymar",
  year: 2023,
  description: "Official PSG third jersey for the 2023 season.",
  image: "jersey-psg-third-2023-neymar.jpg",
  user: user2,
  team: team1,
  size: "L",
  condition: "New"
)

jersey12 = Jersey.create!(
  name: "Real Madrid Home Jersey",
  flocking: "Vinicius Jr.",
  year: 2023,
  description: "Official Real Madrid home jersey for the 2023 season.",
  image: "jersey-realmadrid-home-2023-vinicius.jpeg",
  user: user3,
  team: team2,
  size: "M",
  condition: "Used"
)

jersey13 = Jersey.create!(
  name: "Liverpool Away Jersey",
  flocking: "Van Dijk",
  year: 2019,
  description: "Official Liverpool third jersey for the 2019 season.",
  image: "jersey-liverpool-third-2019-virgil.jpg",
  user: user1,
  team: team3,
  size: "XL",
  condition: "New"
)


jersey19 = Jersey.create!(
  name: "Inter Milan Away Jersey",
  flocking: "Milito",
  year: 2010,
  description: "Official Inter Milan away jersey for the 2010 season.",
  image: "jersey-intermilan-away-2010-milito.jpeg",
  user: user1,
  team: team9,
  size: "L",
  condition: "New"
)

Jersey.create!(
name: "Maillot Zidane 10",
club: "France",
year: 1998,
image_url: "france-zidane.jpg"
)

Jersey.create!(
name: "Maillot Mbappé",
club: "REAL MADRID",
year: 2024,
image_url: "madrid-mbappe.jpg"
)
