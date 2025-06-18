# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "open-uri"
# Example:
Exchange.destroy_all
User.destroy_all
Team.destroy_all
Jersey.destroy_all

# TEAMS
team1 = Team.create!(
  name: "PSG",
  country: "France",
  logo: "psg.png",
  description: "Né en 1970, le PSG s’est hissé au sommet du football mondial grâce à son ambition sans limites. Couronné champion d’Europe en 2025, le club parisien a réalisé son rêve ultime : conquérir la Ligue des Champions. Une victoire éclatante qui symbolise l’entrée définitive du PSG dans le cercle fermé des géants du football.",
  background_image: "psg.jpg"
)

team2 = Team.create!(
  name: "Real Madrid",
  country: "Espagne",
  logo: "real-madrid.png",
  description: "Le roi d’Europe. Fondé en 1902, le Real Madrid est le club le plus titré de l’histoire de la Ligue des Champions avec 15 sacres. Son ADN est forgé dans la gloire, avec des icônes comme Di Stéfano, Zidane ou Cristiano Ronaldo. Le club incarne la réussite, l’élégance et la tradition du football de haut niveau.",
  background_image: "real-madrid.jpg"
)
team3 = Team.create!(
name: "Liverpool FC",
country: "Angleterre",
logo: "liverpool.png",
description: "Avec ses 6 titres en C1 et l’envoûtant chant d’Anfield, Liverpool est un pilier du football anglais. Emmené récemment par Jürgen Klopp, le club a renoué avec son passé glorieux, mêlant passion populaire et jeu spectaculaire.Connus pour leur ferveur à Anfield et leur celebre chant You'll Never Walk Alone.",
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
description: "Manchester City, fondé en 1880, transformé par le projet émirati et l’arrivée de Pep Guardiola, City est devenu une référence moderne. Son jeu collectif fluide, son palmarès récent — dont une Ligue des Champions en 2023 — et sa domination nationale en font une puissance incontournable du football actuel.",
background_image: "manchester.jpg"
)

team6 = Team.create!(
name: "Bayern Munich",
country: "Allemagne",
logo: "bayern-munich.png",
description: "Dominateur en Bundesliga, le Bayern est un monument du football européen avec 6 C1 à son actif. Le club bavarois allie rigueur, stabilité et ambition, incarnant l’excellence allemande sur la scène internationale.
Avec des légendes comme Franz Beckenbauer, Gerd Müller ou plus récemment Robert Lewandowski, le Bayern Munich est un symbole de réussite et de passion footballistique.",
background_image: "bayern-munich.jpg"
)

team7 = Team.create!(
name: "Barcelona",
country: "Espagne",
logo: "barcelona.jpg",
description: "Icône du football romantique, le Barça est reconnu dans le monde entier pour son style unique et son école légendaire, La Masia. Fort de 5 Ligues des Champions, le club catalan a offert au monde des joueurs inoubliables et un football inimitable.
Avec des légendes comme Messi, Xavi et Iniesta, le FC Barcelone incarne l’excellence et la passion du football.",
background_image: "barcelona.png"
)

team8 = Team.create!(
name: "Juventus",
country: "Italie",
logo: "juventus.png",
description: "La Juventus, fondée en 1897 à Turin, club le plus titré d’Italie, est synonyme de régularité et de mentalité de gagnant. Malgré les vents contraires récents, la “Vieille Dame” reste un acteur majeur du football européen, toujours en quête de reconquête.
Avec des légendes comme Alessandro Del Piero, Zinedine Zidane ou Chiellini, la Juve continue de fasciner par son histoire et sa passion.",
background_image: "juventus.jpg"
)

team9 = Team.create!(
name: "Inter Milan",
country: "Italie",
logo: "inter-milan.png",
description: "L’Inter Milan, fondé en 1908, est l’un des clubs les plus prestigieux d’Italie. Il joue au stade San Siro et s’est illustré par ses nombreux titres en Serie A et en compétitions européennes.
Avec une histoire riche et des rivalités intenses, l’Inter est un pilier du football italien.",
background_image:"inter-milan.jpg"
)

team10 = Team.create!(
name: "Chelsea",
country: "Angleterre",
logo: "chelsea.png",
description: "Propulsé dans une nouvelle ère au début des années 2000, Chelsea s’est rapidement imposé comme une force en Europe. Deux Ligues des Champions, une constance en Premier League, et une capacité à renaître saison après saison font du club londonien un adversaire redouté.
Avec des stars comme Frank Lampard, Didier Drogba et Eden Hazard, Chelsea a su allier talent et détermination pour conquérir le cœur de ses supporters.",
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

user4 = User.create!(
  email: "corentin.meunier@gmail.com",
  password: "azerty",
  password_confirmation: "azerty",
  nom: "Ermining_35",
  localisation: "Paris",
  rating: 3
)

# JERSEYS
# PSG
jersey = Jersey.new(
  name: "PSG Goalkeeper Jersey",
  flocking: "Lama",
  year: 1993,
  description: "Signé de la marque Olympic puis Hummel pendant que les joueurs de champs portaient des maillots Nike, le maillot de gardien et ses taches vertes, rouges, bleues et jaunes reste dans la légende des maillots parisiens",
  user_id: user4.id,
  team_id: team1.id,
  size: "L",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/Maillot-PSG-Lama.jpeg")
jersey.image.attach(io: File.open(image_path), filename: "Maillot-PSG-Lama.jpeg", content_type: "image/jpeg")
jersey.save!

jersey = Jersey.new(
  name: "PSG Home RTL",
  flocking: "",
  year: 1981,
  description: "le maillot blanc sur lequel on retrouve une double bande rouge et bleu a connu les premiers grands titres du club comme notamment le premier titre de champion de France de 1986 et les premières coupes de France en 82 et 83. Un design simple et épuré comme on savait le faire dans les années 80, mais qui serait toujours aussi efficace aujourd’hui.",
  user_id: user4.id,
  team_id: team1.id,
  size: "XL",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/maillot-domicile-PSG-1982-1983.jpg")
jersey.image.attach(io: File.open(image_path), filename: "maillot-domicile-PSG-1982-1983.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
  name: "PSG Home Hetcher",
  flocking: "",
  year: 1995,
  description: "Notamment porté lors de la victoire en Coupe d’Europe des vainqueurs de coupes, le maillot domicile de la saison 1995/96 garde une place de choix dans le coeur des supporters avec son style « Hechter » et ce malgré des couleurs très années 90 et notamment un bleu qui tire largement vers le violet et un large col.",
  user_id: user4.id,
  team_id: team1.id,
  size: "M",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/Maillot-domicile-PSG-1995-1996.jpg")
jersey.image.attach(io: File.open(image_path), filename: "Maillot-domicile-PSG-1995-1996.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
  name: "PSG Home Affelou",
  flocking: "",
  year: 1990,
  description: "Quel symbole plus mythique que la Tour Eiffel pour orner le maillot du Paris Saint-Germain? Utilisé pendant près de 10 ans en tant que maillot principal, le maillot de couleur blanc voit ses deux bandes rouges et bleues se séparer pour former le dessin de la dame de fer",
  user_id: user4.id,
  team_id: team1.id,
  size: "M",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/maillot-paris-saint-germain-1990-1991.jpg")
jersey.image.attach(io: File.open(image_path), filename: "maillot-paris-saint-germain-1990-1991.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
  name: "PSG Home original Hetcher",
  flocking: "",
  year: 1973,
  description: "La première version du maillot « Hechter ». Directement inspirée de la tenue de l’Ajax Amsterdam, la bande rouge entourée de deux traits blanc devient rapidement le graphisme emblématique du club",
  user_id: user4.id,
  team_id: team1.id,
  size: "M",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/maillot-domicile-psg-paris-saint-germain-1973-1974-hechter.jpg")
jersey.image.attach(io: File.open(image_path), filename: "maillot-domicile-psg-paris-saint-germain-1973-1974-hechter.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
  name: "PSG 1995-96 Home Jersey",
  flocking: "Rai",
  year: 1996,
  description: "Maillot domicile du PSG 1995-96 porté lors de la victoire en Coupe des Coupes.",
  user_id: user1.id,
  team_id: team1.id,
  size: "L",
  condition: "Vintage"
)
image_path = Rails.root.join("app/assets/images/jerseys/jersey-psg-1995-rai.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-psg-1995-rai.jpg", content_type: "image/jpg")
jersey.save!

# REAL MADRID
jersey = Jersey.new(
  name: "Real Madrid 2001-02 Home Jersey",
  flocking: "Zidane",
  year: 2002,
  description: "Maillot porté lors de la 9e Ligue des Champions, but légendaire de Zidane en finale.",
  user_id: user1.id,
  team_id: team2.id,
  size: "M",
  condition: "Vintage"
)
image_path = Rails.root.join("app/assets/images/jerseys/jersey-realmadrid-2002-zidane.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-realmadrid-2002-zidane.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
  name: "Real Home Siemens",
  flocking: "",
  year: 2002,
  description: "vamos a la playa, no hablo espagnol",
  user_id: user1.id,
  team_id: team2.id,
  size: "M",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/Maillot-vintage-Real-Madrid.jpeg")
jersey.image.attach(io: File.open(image_path), filename: "Maillot-vintage-Real-Madrid.jpeg", content_type: "image/jpeg")
jersey.save!

jersey = Jersey.new(
  name: "Real Home Bernabeu",
  flocking: "Raul",
  year: 2004,
  description: "vamos a la playa, no hablo espagnol",
  user_id: user1.id,
  team_id: team2.id,
  size: "M",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/Maillot-vintage-raul-Real-Madrid.jpg")
jersey.image.attach(io: File.open(image_path), filename: "Maillot-vintage-raul-Real-Madrid.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
  name: "Real Home Zanussi",
  flocking: "",
  year: 1984,
  description: "Camiseta Retro Real Madrid 1984 – Zanussi x Adidas",
  user_id: user1.id,
  team_id: team2.id,
  size: "M",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/real-zanussi.jpeg")
jersey.image.attach(io: File.open(image_path), filename: "real-zanussi.jpeg", content_type: "image/jpeg")
jersey.save!

jersey = Jersey.new(
  name: "Real Home Zizou",
  flocking: "Zidane",
  year: 2001,
  description: "Maillot vintage Zidane, Real Madrid 2001-2002",
  user_id: user1.id,
  team_id: team2.id,
  size: "XL",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/IMG_6067-2-scaled-600x800.jpg")
jersey.image.attach(io: File.open(image_path), filename: "IMG_6067-2-scaled-600x800.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
  name: "Real Away Black Figo",
  flocking: "Figo",
  year: 2001,
  description: "Maillot vintage Figo, Real Madrid 2001-2002",
  user_id: user1.id,
  team_id: team2.id,
  size: "S",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/figo-real-madrid-2001.jpg")
jersey.image.attach(io: File.open(image_path), filename: "figo-real-madrid-2001.jpg", content_type: "image/jpg")
jersey.save!


# LIVERPOOL
jersey = Jersey.new(
  name: "Liverpool 2004-05 Home Jersey",
  flocking: "Gerrard",
  year: 2005,
  description: "Maillot mythique porté lors de la remontada en finale de LDC à Istanbul.",
  user_id: user3.id,
  team_id: team3.id,
  size: "XL",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/jersey-liverpool-2005-gerrard.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-liverpool-2005-gerrard.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
  name: "Liverpool Away vintage Jersey",
  flocking: "",
  year: 1993,
  description: "Maillot rétro vintage liverpool blanc",
  user_id: user3.id,
  team_id: team3.id,
  size: "L",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/Maillot-retro-vintage-Liverpool-Away-1993-1995-1.jpg")
jersey.image.attach(io: File.open(image_path), filename: "Maillot-retro-vintage-Liverpool-Away-1993-1995-1.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
  name: "Liverpool Home vintage Hitachi",
  flocking: "",
  year: 1979,
  description: "Maillot rétro vintage liverpool hitachi",
  user_id: user3.id,
  team_id: team3.id,
  size: "M",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/liverpool-1979-80-8.jpg")
jersey.image.attach(io: File.open(image_path), filename: "liverpool-1979-80-8.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
  name: "Liverpool Home Retro Candy",
  flocking: "",
  year: 1989,
  description: "Maillot rétro vintage liverpool Candy",
  user_id: user3.id,
  team_id: team3.id,
  size: "M",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/maillot-retro-liverpool-1989-1991-Retro-1989-1991-Liverpool-home-1.jpg")
jersey.image.attach(io: File.open(image_path), filename: "maillot-retro-liverpool-1989-1991-Retro-1989-1991-Liverpool-home-1.jpg", content_type: "image/jpg")
jersey.save!

jersey = Jersey.new(
  name: "Liverpool Home 150years",
  flocking: "Coutinho",
  year: 2017,
  description: "Maillot des 150ans du club",
  user_id: user3.id,
  team_id: team3.id,
  size: "M",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/liverpool_coutinho.jpeg")
jersey.image.attach(io: File.open(image_path), filename: "liverpool_coutinho.jpeg", content_type: "image/jpeg")
jersey.save!

jersey = Jersey.new(
  name: "Liverpool Away Fernando",
  flocking: "Torres",
  year: 2008,
  description: "Maillot rétro vintage liverpool Candy",
  user_id: user3.id,
  team_id: team3.id,
  size: "L",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/liverpool-Torres.jpg")
jersey.image.attach(io: File.open(image_path), filename: "liverpool-Torres.jpg", content_type: "image/jpg")
jersey.save!

# MILAN AC
jersey = Jersey.new(
  name: "AC Milan 2006-07 Home Jersey",
  flocking: "Kaká",
  year: 2007,
  description: "Porté lors de la 7e victoire en Ligue des Champions, Kaká ballon d'or.",
  user_id: user1.id,
  team_id: team4.id,
  size: "L",
  condition: "Neuf"
)
image_path = Rails.root.join("app/assets/images/jerseys/jersey-acmilan-2007-kaka.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-acmilan-2007-kaka.jpg", content_type: "image/jpg")
jersey.save!

# MANCHESTER CITY
jersey = Jersey.new(
  name: "Manchester City 2011-12 Home Jersey",
  flocking: "Aguero",
  year: 2012,
  description: "Maillot du titre historique arraché à la dernière seconde par le but d'Agüero.",
  user_id: user2.id,
  team_id: team5.id,
  size: "M",
  condition: "Etat correct"
)
image_path = Rails.root.join("app/assets/images/jerseys/jersey-mancity-2012-aguero.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-mancity-2012-aguero.jpg", content_type: "image/jpg")
jersey.save!

# BAYERN MUNICH
jersey = Jersey.new(
  name: "Bayern Munich 2012-13 Home Jersey",
  flocking: "Robben",
  year: 2013,
  description: "Maillot de la saison du triplé historique avec Robben buteur en finale de C1.",
  user_id: user3.id,
  team_id: team6.id,
  size: "L",
  condition: "Neuf"
)
image_path = Rails.root.join("app/assets/images/jerseys/jersey-bayern-2013-robben.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-bayern-2013-robben.jpg", content_type: "image/jpg")
jersey.save!

# BARCELONE
jersey = Jersey.new(
  name: "Barcelona 2010-11 Home Jersey",
  flocking: "Messi",
  year: 2011,
  description: "Maillot de la meilleure équipe de l'histoire dirigée par Guardiola, vainqueur de la C1.",
  user_id: user1.id,
  team_id: team7.id,
  size: "M",
  condition: "Neuf"
)
image_path = Rails.root.join("app/assets/images/jerseys/jersey-barcelona-2011-messi.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-barcelona-2011-messi.jpg", content_type: "image/jpg")
jersey.save!

# JUVENTUS
jersey = Jersey.new(
  name: "Juventus 1996-97 Home Jersey",
  flocking: "Del Piero",
  year: 1997,
  description: "Maillot porté après le sacre en Ligue des Champions 1996, génération Del Piero.",
  user_id: user2.id,
  team_id: team8.id,
  size: "XL",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/jersey-juventus-1997-delpiero.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-juventus-1997-delpiero.jpg", content_type: "image/jpg")
jersey.save!

# INTER
jersey = Jersey.new(
  name: "Inter Milan 2009-10 Home Jersey",
  flocking: "Milito",
  year: 2010,
  description: "Maillot du triplé historique sous Mourinho avec Milito décisif en finale de C1.",
  user_id: user1.id,
  team_id: team9.id,
  size: "L",
  condition: "Bon état"
)
image_path = Rails.root.join("app/assets/images/jerseys/jersey-inter-2010-milito.jpg")
jersey.image.attach(io: File.open(image_path), filename: "jersey-inter-2010-milito.jpg", content_type: "image/jpg")
jersey.save!
