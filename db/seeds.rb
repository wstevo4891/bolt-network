# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Genre.create( name: 'Action' ) 
Genre.create( name: 'Adventure' ) 
Genre.create( name: 'Animation' ) 
Genre.create( name: 'Comedy' ) 
Genre.create( name: 'Drama' ) 
Genre.create( name: 'Family' ) 
Genre.create( name: 'Fantasy' ) 
Genre.create( name: 'Horror' ) 
Genre.create( name: 'Sci-Fi' )

Movie.create(
	title: 'The Avengers',
	photo: 'the-avengers.jpg',
	summary: 'Nick Fury assembles a team of super heroes to battle Loki and his alien army.',
	rating: 92
)
Movie.create(
	title: 'Harry Potter & The Deathly Hallows Part II',
	photo: 'harry-potter.jpg',
	summary: '...',
	rating: 96
)
Movie.create(
	title: 'Frozen',
	photo: 'frozen.jpg',
	summary: '...',
	rating: 89
)
Movie.create(
	title: 'Iron Man 3',
	photo: 'iron-man-3.jpg',
	summary: '...',
	rating: 79
)
Movie.create(
	title: 'Transformers: Dark of the Moon',
	photo: 'transformers-dark-of-the-moon.jpg',
	summary: '...',
	rating: 35
)
Movie.create(
	title: 'The Lord of the Rings: The Return of the King',
	photo: 'the-lord-of-the-rings-return-of-the-king.jpg',
	summary: '...',
	rating: 95
)
Movie.create(
    title: 'Skyfall',
    photo: 'skyfall.jpg',
    summary: '...',
    rating: 93
)
Movie.create(
	title: 'The Dark Knight',
	photo: 'the-dark-knight.jpg',
	summary: '...',
	rating: 94
)
Movie.create(
	title: 'Pirates of the Carribean: The Curse of the Black Pearl',
	photo: 'pirates-of-the-carribean.jpg',
	summary: '...',
	rating: 79
)
Movie.create(
	title: 'Toy Story 3',
	photo: 'toy-story-3.jpg',
	summary: '...',
	rating: 99
)
