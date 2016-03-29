# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}.jpg"))
end

Genre.create!( name: 'Action' ) 
Genre.create!( name: 'Adventure' ) 
Genre.create!( name: 'Animation' ) 
Genre.create!( name: 'Comedy' ) 
Genre.create!( name: 'Drama' ) 
Genre.create!( name: 'Family' ) 
Genre.create!( name: 'Fantasy' ) 
Genre.create!( name: 'Horror' ) 
Genre.create!( name: 'Sci-Fi' )

Movie.create!(
	title: 'The Avengers',
	photo: seed_image('the-avengers'),
	summary: 'Nick Fury assembles a team of super heroes to battle Loki and his alien army.',
	rating: 92
)
Movie.create!(
	title: 'Harry Potter & The Deathly Hallows Part II',
	photo: seed_image('harry-potter'),
	summary: '...',
	rating: 96
)
Movie.create!(
	title: 'Frozen',
	photo: seed_image('frozen'),
	summary: '...',
	rating: 89
)
Movie.create!(
	title: 'Iron Man 3',
	photo: seed_image('iron-man-3'),
	summary: '...',
	rating: 79
)
Movie.create!(
	title: 'Transformers: Dark of the Moon',
	photo: seed_image('transformers-dark-of-the-moon'),
	summary: '...',
	rating: 35
)
Movie.create!(
	title: 'The Lord of the Rings: The Return of the King',
	photo: seed_image('the-lord-of-the-rings-return-of-the-king'),
	summary: '...',
	rating: 95
)
Movie.create!(
    title: 'Skyfall',
    photo: seed_image('skyfall'),
    summary: '...',
    rating: 93
)
Movie.create!(
	title: 'The Dark Knight',
	photo: seed_image('the-dark-knight'),
	summary: '...',
	rating: 94
)
Movie.create!(
	title: 'Pirates of the Caribbean: The Curse of the Black Pearl',
	photo: seed_image('pirates-of-the-caribbean'),
	summary: '...',
	rating: 79
)
Movie.create!(
	title: 'Toy Story 3',
	photo: seed_image('toy-story-3'),
	summary: '...',
	rating: 99
)
