# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
# Team.destroy_all
# User.destroy_all
# Jersey.destroy_all

# TEAMS
team1 = Team.create!(
  name: "PSG",
  country: "France",
  logo: "https://img.uefa.com/imgml/TP/teams/logos/700x700/52747.png"
)

team2 = Team.create!(
  name: "Real Madrid",
  country: "Espagne",
  logo: "https://img.uefa.com/imgml/TP/teams/logos/700x700/50051.png"
)

team3 = Team.create!(
  name: "liverpool",
  country: "Angleterre",
  logo: "https://img.uefa.com/imgml/TP/teams/logos/700x700/7889.png"
)

team4 = Team.create!(
  name: "AC Milan",
  country: "Italie",
  logo: "https://img.uefa.com/imgml/TP/teams/logos/700x700/50058.png"
)

team5 = Team.create!(
  name: "Manchester City",
  country: "Angleterre",
  logo: "https://img.uefa.com/imgml/TP/teams/logos/700x700/52919.png"
)

team6 = Team.create!(
  name: "Bayern Munich",
  country: "Allemagne",
  logo: "https://img.uefa.com/imgml/TP/teams/logos/700x700/50037.png"
)

team7 = Team.create!(
  name: "Barcelona",
  country: "Espagne",
  logo: "https://img.uefa.com/imgml/TP/teams/logos/700x700/50080.png"
)

team8 = Team.create!(
  name: "Juventus",
  country: "Italie",
  logo: "https://img.uefa.com/imgml/TP/teams/logos/700x700/50139.png"
)

team9 = Team.create!(
  name: "Inter Milan",
  country: "Italie",
  logo: "https://img.uefa.com/imgml/TP/teams/logos/700x700/50138.png"
)

team10 = Team.create!(
  name: "Chelsea",
  country: "Angleterre",
  logo: "https://img.uefa.com/imgml/TP/teams/logos/700x700/52914.png"
)

# USERS
user1 = User.create!(
  email: "fake@fake.fr",
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
  image: "maillot-mbappe-equipe-de-france-domicile-2024.jpg",
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

jersey9 = Jersey.create!(
  name: "Inter Milan Home Jersey",
  flocking: "Thuram",
  year: 2023,
  description: "Official Inter Milan home jersey for the 2023 season.",
  image: "jersey-intermilan-home-2023-thuram.jpg",
  user: user3,
  team: team9,
  size: "L",
  condition: "New"
)

jersey10 = Jersey.create!(
  name: "Chelsea Away Jersey",
  flocking: "Sterling",
  year: 2023,
  description: "Official Chelsea away jersey for the 2023 season.",
  image: "jersey-chelsea-away-2023-sterling.jpg",
  user: user1,
  team: team10,
  size: "M",
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
  year: 2023,
  description: "Official Liverpool third jersey for the 2023 season.",
  image: "jersey-liverpool-third-2023-virgil.jpg",
  user: user1,
  team: team3,
  size: "XL",
  condition: "New"
)

jersey14 = Jersey.create!(
  name: "AC Milan Home Jersey",
  flocking: "Tonali",
  year: 2023,
  description: "Official AC Milan home jersey for the 2023 season.",
  image: "jersey-acmilan-home-2023-tonali.jpg",
  user: user2,
  team: team4,
  size: "L",
  condition: "Used"
)

jersey15 = Jersey.create!(
  name: "Manchester City Third Jersey",
  flocking: "De Bruyne",
  year: 2024,
  description: "Official Manchester City third jersey for the 2024 season.",
  image: "jersey-mancity-third-2024-debruyne.jpg",
  user: user3,
  team: team5,
  size: "M",
  condition: "New"
)
jersey16 = Jersey.create!(
  name: "Bayern Munich Away Jersey",
  flocking: "Kimmich",
  year: 2022,
  description: "Official Bayern Munich away jersey for the 2022 season.",
  image: "jersey-bayernmunich-home-2022-kimmich.jpg",
  user: user1,
  team: team6,
  size: "L",
  condition: "Used"
)

jersey17 = Jersey.create!(
  name: "Barcelona Away Jersey",
  flocking: "Pedri",
  year: 2023,
  description: "Official Barcelona away jersey for the 2023 season.",
  image: "jersey-barca-away-2023-pedri.jpg",
  user: user2,
  team: team7,
  size: "M",
  condition: "New"
)

jersey18 = Jersey.create!(
  name: "Juventus Home Jersey",
  flocking: "Chiesa",
  year: 2023,
  description: "Official Juventus home jersey for the 2023 season.",
  image: "jersey-juventus-home-2023-chiesa.jpg",
  user: user3,
  team: team8,
  size: "XL",
  condition: "Used"
)

jersey19 = Jersey.create!(
  name: "Inter Milan Away Jersey",
  flocking: "Martinez",
  year: 2023,
  description: "Official Inter Milan away jersey for the 2023 season.",
  image: "jersey-intermilan-away-2023-lautaro.jpeg",
  user: user1,
  team: team9,
  size: "L",
  condition: "New"
)

jersey20 = Jersey.create!(
  name: "PSG Home Jersey",
  flocking: "Doué",
  year: 2024,
  description: "Official PSG home jersey for the 2024 season.",
  image: "jersey-psg-home-2024-desiredoue.jpg",
  user: user2,
  team: team10,
  size: "M",
  condition: "Used"
)
