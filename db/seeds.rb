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
