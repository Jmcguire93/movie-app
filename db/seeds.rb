# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

actor = Actor.create(first_name: "Nathan", last_name: "Fillion", known_for: "Firefly")

actor = Actor.create(first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock")

movie = Movie.create(title: "Inception", year: 2010, plot: "Dom Cobb (Leonardo DiCaprio) is a thief with the rare ability to enter people's dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly impossible task: Plant an idea in someone's mind. If he succeeds, it will be the perfect crime, but a dangerous enemy anticipates Cobb's every move.")

movie = Movie.create(title: "School of Rock", year: 2003, plot: "Overly enthusiastic guitarist Dewey Finn (Jack Black) gets thrown out of his bar band and finds himself in desperate need of work. Posing as a substitute music teacher at an elite private elementary school, he exposes his students to the hard rock gods he idolizes and emulates -- much to the consternation of the uptight principal (Joan Cusack). As he gets his privileged and precocious charges in touch with their inner rock 'n' roll animals, he imagines redemption at a local Battle of the Bands.")

movie = Movie.create(title: "Dodgeball: A True Underdog Story", year: 2004, plot: "Average Joe's Gym and its owner, Peter La Fleur (Vince Vaughn), are both down on their luck. A fancy competing gym called Globo-Gym, run by the maniacal health nut White Goodman (Ben Stiller), is about to put Average Joe's out of business unless Peter can raise $50,000 to keep his mortgage. To save the gym, Peter and a ragtag group of Average Joe's members and employees enter a dodgeball contest with a big cash prize. In response, White forms his own Globo-Gym team to rout the competition." )

