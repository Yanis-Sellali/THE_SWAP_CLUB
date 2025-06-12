# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
# Team.destroy_all
User.destroy_all
Team.destroy_all
Jersey.destroy_all

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
  user_id: user1.id,
  team_id: team1.id,
  size: "L",
  condition: "New"
)

jersey2 = Jersey.create!(
  name: "Real Madrid Away Jersey",
  flocking: "Benzema",
  year: 2023,
  description: "Official Real Madrid away jersey for the 2023 season.",
  image: "jersey-realmadrid-away-2023-benzema.jpg",
  user_id: user2.id,
  team_id: team2.id,
  size: "M",
  condition: "Used"
)

jersey3 = Jersey.create!(
  name: "Liverpool Home Jersey",
  flocking: "Salah",
  year: 2023,
  description: "Official Liverpool home jersey for the 2023 season.",
  image: "jersey-liverpool-home-2023-salah.jpg",
  user_id: user3.id,
  team_id: team3.id,
  size: "XL",
  condition: "New"
)
jersey4 = Jersey.create!(
  name: "AC Milan Home Jersey",
  flocking: "Leao",
  year: 2024,
  description: "Official AC Milan home jersey for the 2024 season.",
  image: "jersey-acmilan-home-2024-leao.jpg",
  user_id: user1.id,
  team_id: team4.id,
  size: "L",
  condition: "Used"
)

jersey5 = Jersey.create!(
  name: "Manchester City Home Jersey",
  flocking: "Haaland",
  year: 2023,
  description: "Official Manchester City home jersey for the 2023 season.",
  image: "jersey-mancity-home-2023-haaland.jpg",
  user_id: user2.id,
  team_id: team5.id,
  size: "M",
  condition: "New"
)

jersey6 = Jersey.create!(
  name: "Bayern Munich Away Jersey",
  flocking: "Muller",
  year: 2023,
  description: "Official Bayern Munich away jersey for the 2023 season.",
  image: "jersey-bayernmunich-away-2023-muller.jpeg",
  user_id: user3.id,
  team_id: team6.id,
  size: "L",
  condition: "Used"
)

jersey7 = Jersey.create!(
  name: "Barcelona Home Jersey",
  flocking: "Lewandowski",
  year: 2023,
  description: "Official Barcelona home jersey for the 2023 season.",
  image: "jersey-barca-home-2023-lewandowski.jpg",
  user_id: user1.id,
  team_id: team7.id,
  size: "M",
  condition: "New"
)

jersey8 = Jersey.create!(
  name: "Juventus Away Jersey",
  flocking: "Vlahovic",
  year: 2023,
  description: "Official Juventus away jersey for the 2023 season.",
  image: "jersey-juventus-away-2023-vlahovic.jpg",
  user_id: user2.id,
  team_id: team8.id,
  size: "XL",
  condition: "Used"
)

jersey11 = Jersey.create!(
  name: "PSG Third Jersey",
  flocking: "Neymar",
  year: 2023,
  description: "Official PSG third jersey for the 2023 season.",
  image: "jersey-psg-third-2023-neymar.jpg",
  user_id: user2.id,
  team_id: team1.id,
  size: "L",
  condition: "New"
)

jersey12 = Jersey.create!(
  name: "Real Madrid Home Jersey",
  flocking: "Vinicius Jr.",
  year: 2023,
  description: "Official Real Madrid home jersey for the 2023 season.",
  image: "jersey-realmadrid-home-2023-vinicius.jpeg",
  user_id: user3.id,
  team_id: team2.id,
  size: "M",
  condition: "Used"
)

jersey13 = Jersey.create!(
  name: "Liverpool Away Jersey",
  flocking: "Van Dijk",
  year: 2019,
  description: "Official Liverpool third jersey for the 2019 season.",
  image: "jersey-liverpool-third-2019-virgil.jpg",
  user_id: user1.id,
  team_id: team3.id,
  size: "XL",
  condition: "New"
)


jersey19 = Jersey.create!(
  name: "Inter Milan Away Jersey",
  flocking: "Milito",
  year: 2010,
  description: "Official Inter Milan away jersey for the 2010 season.",
  image: "jersey-intermilan-away-2010-milito.jpeg",
  user_id: user1.id,
  team_id: team9.id,
  size: "L",
  condition: "New"
)
