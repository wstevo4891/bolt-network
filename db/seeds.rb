# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def seed_image(file_name)
  File.open(File.join(Rails.root, "/public/#{file_name}"))
end

Genre.create!( name: 'Action' )     # 1
Genre.create!( name: 'Comedy' )     # 2
Genre.create!( name: 'Drama' )      # 3
Genre.create!( name: 'Animation' )  # 4
Genre.create!( name: 'Family' )     # 5
Genre.create!( name: 'Fantasy' )    # 6
Genre.create!( name: 'Romance' )    # 7
Genre.create!( name: 'Horror' )     # 8
Genre.create!( name: 'Sci-Fi' )     # 9


# MOVIE ID 1
Movie.create!(
	title: 'The Avengers',
	photo: seed_image('avengers-poster.jpeg'),
	summary: 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity.',
	rating: 92,
	genre_ids: [1]
)


# MOVIE ID 2
Movie.create!(
	title: 'Harry Potter & The Deathly Hallows Part II',
	photo: seed_image('hp7-poster.jpg'),
	summary: 'Harry, Ron and Hermione search for Voldemort\'s remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts.',
	rating: 96,
	genre_ids: [1, 6]
)


# MOVIE ID 3
Movie.create!(
	title: 'Frozen',
	photo: seed_image('frozen-poster.png'),
	summary: 'When the newly crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister, Anna, teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.',
	rating: 89,
	genre_ids: [2, 5, 6]
)


# MOVIE ID 4
Movie.create!(
	title: 'Iron Man 3',
	photo: seed_image('iron-man-3-poster.jpg'),
	summary: 'When Tony Stark\'s world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.',
	rating: 79,
	genre_ids: [1]
)


# MOVIE ID 5
Movie.create!(
	title: 'Transformers: Dark of the Moon',
	photo: seed_image('transformers-3-poster.jpg'),
	summary: 'The Autobots learn of a Cybertronian spacecraft hidden on the moon, and race against the Decepticons to reach it and to learn its secrets.',
	rating: 35,
	genre_ids: [1]
)


# MOVIE ID 6
Movie.create!(
	title: 'The Lord of the Rings: The Return of the King',
	photo: seed_image('return-of-the-king-poster.jpg'),
	summary: 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.',
	rating: 95,
	genre_ids: [1, 3, 6]
)


# MOVIE ID 7
Movie.create!(
    title: 'Skyfall',
    photo: seed_image('skyfall-poster.jpg'),
    summary: 'Bond\'s loyalty to M is tested when her past comes back to haunt her. Whilst MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.',
    rating: 93,
    genre_ids: [1]
)


# MOVIE ID 8
Movie.create!(
	title: 'The Dark Knight',
	photo: seed_image('the-dark-knight-poster.jpg'),
	summary: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, the caped crusader must come to terms with one of the greatest psychological tests of his ability to fight injustice.',
	rating: 94,
	genre_ids: [1, 3]
)


# MOVIE ID 9
Movie.create!(
	title: 'Pirates of the Caribbean: The Curse of the Black Pearl',
	photo: seed_image('pirates-curse-of-the-black-pearl-poster.jpg'),
	summary: 'Blacksmith Will Turner teams up with eccentric pirate "Captain" Jack Sparrow to save his love, the governor\'s daughter, from Jack\'s former pirate allies, who are now undead.',
	rating: 79,
	genre_ids: [1, 2]
)


# MOVIE ID 10
Movie.create!(
	title: 'Toy Story 3',
	photo: seed_image('toy-story-3-poster.jpg'),
	summary: 'The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it\'s up to Woody to convince the other toys that they weren\'t abandoned and to return home.',
	rating: 99,
	genre_ids: [2, 4, 5]
)



