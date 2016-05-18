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
Genre.create!( name: 'Romance' )    # 6
Genre.create!( name: 'Fantasy' )    # 7
Genre.create!( name: 'Sci-Fi' )     # 8
Genre.create!( name: 'Horror' )     # 9



# MOVIE ID 1
Movie.create!(
	title: 'The Avengers',
	photo: seed_image('avengers-poster.jpeg'),
	year: 2012,
	rating: 'PG-13',
	length: '2h 23min',
	summary: 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity.',
	tomato_meter: 92,
	genre_ids: [1]
)


# MOVIE ID 2
Movie.create!(
	title: 'Harry Potter & The Deathly Hallows Part II',
	photo: seed_image('hp7-poster.jpg'),
	year: 2011,
	rating: 'PG-13',
	length: '2h 10min',
	summary: 'Harry, Ron and Hermione search for Voldemort\'s remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts.',
	tomato_meter: 96,
	genre_ids: [1,7]
)


# MOVIE ID 3
Movie.create!(
	title: 'Frozen',
	photo: seed_image('frozen-poster.png'),
	year: 2013,
	rating: 'PG',
	length: '1h 42min',
	summary: 'When the newly crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister, Anna, teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.',
	tomato_meter: 89,
	genre_ids: [2,4,5,7]
)


# MOVIE ID 4
Movie.create!(
	title: 'Iron Man 3',
	photo: seed_image('iron-man-3-poster.jpg'),
	year: 2013,
	rating: 'PG-13',
	length: '2h 10min',
	summary: 'When Tony Stark\'s world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.',
	tomato_meter: 79,
	genre_ids: [1]
)


# MOVIE ID 5
Movie.create!(
	title: 'Transformers: Dark of the Moon',
	photo: seed_image('transformers-3-poster.jpg'),
	year: 2011,
	rating: 'PG-13',
	length: '2h 34min',
	summary: 'The Autobots learn of a Cybertronian spacecraft hidden on the moon, and race against the Decepticons to reach it and to learn its secrets.',
	tomato_meter: 35,
	genre_ids: [1]
)


# MOVIE ID 6
Movie.create!(
	title: 'The Lord of the Rings: The Return of the King',
	photo: seed_image('return-of-the-king-poster.jpg'),
	year: 2003,
	rating: 'PG-13',
	length: '3h 21min',
	summary: 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.',
	tomato_meter: 95,
	genre_ids: [1,7]
)


# MOVIE ID 7
Movie.create!(
    title: 'Skyfall',
    photo: seed_image('skyfall-poster.jpg'),
    year: 2012,
    rating: 'PG-13',
    length: '2h 23min',
    summary: 'Bond\'s loyalty to M is tested when her past comes back to haunt her. Whilst MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.',
    tomato_meter: 93,
    genre_ids: [1]
)


# MOVIE ID 8
Movie.create!(
	title: 'The Dark Knight',
	photo: seed_image('the-dark-knight-poster.jpg'),
	year: 2008,
	rating: 'PG-13',
	length: '2h 32min',
	summary: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, the caped crusader must come to terms with one of the greatest psychological tests of his ability to fight injustice.',
	tomato_meter: 94,
	genre_ids: [1]
)


# MOVIE ID 9
Movie.create!(
	title: 'Pirates of the Caribbean: The Curse of the Black Pearl',
	photo: seed_image('pirates-curse-of-the-black-pearl-poster.jpg'),
	year: 2003,
	rating: 'PG-13',
	length: '2h 23min',
	summary: 'Blacksmith Will Turner teams up with eccentric pirate "Captain" Jack Sparrow to save his love, the governor\'s daughter, from Jack\'s former pirate allies, who are now undead.',
	tomato_meter: 79,
	genre_ids: [1,2]
)


# MOVIE ID 10
Movie.create!(
	title: 'Toy Story 3',
	photo: seed_image('toy-story-3-poster.jpg'),
	year: 2010,
	rating: 'G',
	length: '1h 43min',
	summary: 'The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it\'s up to Woody to convince the other toys that they weren\'t abandoned and to return home.',
	tomato_meter: 99,
	genre_ids: [2,4,5]
)

# MOVIE ID 11
Movie.create!(
	title: 'Conan the Barbarian',
	photo: seed_image('conan-the-barbarian-poster.jpg'),
	year: 1982,
	rating: 'R',
	length: '2h 9min',
	summary: 'A vengeful barbarian warrior sets off to avenge his tribe and his parents whom were slain by an evil sorcerer and his warriors when he was a boy.',
  genre_ids: [1,7]
)

#MOVIE ID 12
Movie.create!(
	title: 'Braveheart',
	photo: seed_image('braveheart-poster.jpg'),
	year: 1995,
	rating: 'R',
	length: '2h 58min',
	summary: 'When his secret bride is executed for assaulting an English soldier who tried to rape her, William Wallace begins a revolt against King Edward I of England.',
  genre_ids: [1,3]
)

#MOVIE ID 13
Movie.create!(
	title: 'Die Hard',
	photo: seed_image('die-hard.jpg'),
	year: 1988,
	rating: 'R',
	length: '2h 11min',
	summary: 'John McClane, officer of the NYPD, tries to save his wife Holly Gennaro and several others that were taken hostage by German terrorist Hans Gruber during a Christmas party at the Nakatomi Plaza in Los Angeles.',
  genre_ids: [1]
)

#MOVIE ID 14
Movie.create!(
	title: 'The 40 Year-Old Virgin',
	photo: seed_image('40-year-old-virgin-poster.jpg'),
	year: 2005,
	rating: 'R',
	length: '1h 56min',
	summary: 'Goaded by his buddies, a nerdy guy who\'s never "done the deed" only finds the pressure mounting when he meets a single mother.',
  genre_ids: [2,6]
)

#MOVIE ID 15
Movie.create!(
	title: 'Ghostbusters',
	photo: seed_image('ghostbusters-poster.jpg'),
	year: 1984,
	rating: 'PG',
	length: '1h 45min',
	summary: 'Three former parapsychology professors set up shop as a unique ghost removal service.',
  genre_ids: [1,2,7]
)

#MOVIE ID 16
Movie.create!(
	title: 'Superbad',
	photo: seed_image('superbad-poster.jpg'),
	year: 2007,
	rating: 'R',
	length: '1h 53min',
	summary: 'Two co-dependent high school seniors are forced to deal with separation anxiety after their plan to stage a booze-soaked party goes awry.',
  genre_ids: [2]
)

#MOVIE ID 17
Movie.create!(
	title: 'Maverick',
	photo: seed_image('maverick-poster.jpg'),
	year: 1994,
	rating: 'PG',
	length: '2h 7min',
	summary: 'Bret Maverick, needing money for a poker tournament, faces various comic mishaps and challenges, including a charming woman thief.',
  genre_ids: [1,2]
)

#MOVIE ID 18
Movie.create!(
	title: 'The Interview',
	photo: seed_image('the-interview-poster.jpg'),
	year: 2014,
	rating: 'R',
	length: '1h 52min',
	summary: 'Dave Skylark and producer Aaron Rapoport run the celebrity tabloid show "Skylark Tonight." When they land an interview with a surprise fan, North Korean dictator Kim Jong-un, they are recruited by the CIA to turn their trip to Pyongyang into an assassination mission.',
  genre_ids: [2]
)

#MOVIE ID 19
Movie.create!(
	title: 'Deadpool',
	photo: seed_image('deadpool-poster.jpg'),
	year: 2016,
	rating: 'R',
	length: '1h 48min',
	summary: 'A former Special Forces operative turned mercenary is subjected to a rogue experiment that leaves him with accelerated healing powers, adopting the alter ego Deadpool.',
  genre_ids: [1,2]
)

#MOVIE ID 20
Movie.create!(
	title: 'Wedding Crashers',
	photo: seed_image('wedding-crashers-poster.jpg'),
	year: 2005,
	rating: 'R',
	length: '1h 59min',
	summary: 'John Beckwith and Jeremy Grey, a pair of committed womanizers who sneak into weddings to take advantage of the romantic tinge in the air, find themselves at odds with one another when John meets and falls for Claire Cleary.',
  genre_ids: [2,6]
)

#MOVIE ID 21
Movie.create!(
	title: 'Bridesmaids',
	photo: seed_image('bridesmaids-poster.jpg'),
	year: 2011,
	rating: 'R',
	length: '2h 5min',
	summary: 'Competition between the maid of honor and a bridesmaid, over who is the bride\'s best friend, threatens to upend the life of an out-of-work pastry chef.',
  genre_ids: [2,6]
)

#MOVIE ID 22
Movie.create!(
	title: 'Shaun of the Dead',
	photo: seed_image('shaun-of-the-dead-poster.jpg'),
	year: 2004,
	rating: 'R',
	length: '1h 39min',
	summary: 'A man decides to turn his moribund life around by winning back his ex-girlfriend, reconciling his relationship with his mother, and dealing with an entire community that has returned from the dead to eat the living.',
  genre_ids: [2,9]
)

#MOVIE ID 23
Movie.create!(
	title: 'Borat',
	photo: seed_image('borat-poster.jpg'),
	year: 2006,
	rating: 'R',
	length: '1h 24min',
	summary: 'Kazakh TV talking head Borat is dispatched to the United States to report on the greatest country in the world. With a documentary crew in tow, Borat becomes more interested in locating and marrying Pamela Anderson.',
  genre_ids: [2]
)

#MOVIE ID 24
Movie.create!(
	title: 'The Hangover',
	photo: seed_image('the-hangover-poster.jpg'),
	year: 2009,
	rating: 'R',
	length: '1h 40min',
	summary: 'Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.',
  genre_ids: [2]
)

#MOVIE ID 25
Movie.create!(
	title: 'The Princess Bride',
	photo: seed_image('the-princess-bride-poster.jpg'),
	year: 1987,
	rating: 'PG',
	length: '1h 38min',
	summary: 'While home sick in bed, a young boy\'s grandfather reads him a story called The Princess Bride.',
  genre_ids: [1,2,5]
)

#MOVIE ID 26
Movie.create!(
	title: 'American Psycho',
	photo: seed_image('american-psycho-poster.jpg'),
	year: 2000,
	rating: 'R',
	length: '1h 42min',
	summary: 'A wealthy New York investment banking executive hides his alternate psychopathic ego from his co-workers and friends as he delves deeper into his violent, hedonistic fantasies.',
  genre_ids: [2,3,9]
)

#MOVIE ID 27
Movie.create!(
	title: 'Forest Gump',
	photo: seed_image('forest-gump-poster.jpg'),
	year: 1994,
	rating: 'PG-13',
	length: '2h 22min',
	summary: 'Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.',
  genre_ids: [3,6]
)

#MOVIE ID 28
Movie.create!(
	title: 'The Shawshank Redemption',
	photo: seed_image('shawshank-poster.jpg'),
	year: 1994,
	rating: 'R',
	length: '2h 22min',
	summary: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
  genre_ids: [3]
)

#MOVIE ID 29
Movie.create!(
	title: 'The Godfather',
	photo: seed_image('godfather-poster.jpg'),
	year: 1972,
	rating: 'R',
	length: '2h 55min',
	summary: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
  genre_ids: [3]
)

#MOVIE ID 30
Movie.create!(
	title: "Schindler's List",
	photo: seed_image('schindlers-list-poster.jpg'),
	year: 1993,
	rating: 'R',
	length: '3h 15min',
	summary: 'In Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.',
  genre_ids: [3]
)

#MOVIE ID 31
Movie.create!(
	title: "Slumdog Millionaire",
	photo: seed_image('slumdog-millionaire-poster.jpg'),
	year: 2008,
	rating: 'R',
	length: '2h',
	summary: 'A Mumbai teen reflects on his upbringing in the slums when he is accused of cheating on the Indian Version of "Who Wants to be a Millionaire?"',
  genre_ids: [3,6]
)

#MOVIE ID 32
Movie.create!(
	title: "Good Will Hunting",
	photo: seed_image('good-will-hunting-poster.jpg'),
	year: 1997,
	rating: 'R',
	length: '2h 6min',
	summary: "Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.",
  genre_ids: [3]
)

#MOVIE ID 33
Movie.create!(
	title: "12 Angry Men",
	photo: seed_image('12-angry-men-poster.jpg'),
	year: 1957,
	rating: 'NR',
	length: '1h 36min',
	summary: "A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.",
  genre_ids: [3]
)

#MOVIE ID 34
Movie.create!(
	title: "Inherit the Wind",
	photo: seed_image('inherit-the-wind-poster.jpg'),
	year: 1960,
	rating: 'NR',
	length: '2h 8min',
	summary: "Based on a real-life case in 1925, two great lawyers argue the case for and against a science teacher accused of the crime of teaching evolution.",
  genre_ids: [3]
)

#MOVIE ID 35
Movie.create!(
	title: "Casablanca",
	photo: seed_image('casablanca-poster.jpg'),
	year: 1942,
	rating: 'PG',
	length: '1h 42min',
	summary: "In Casablanca, Morocco during the early days of World War II, an American expatriate meets a former lover, with unforeseen complications.",
  genre_ids: [3,6]
)



















