# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'yaml'

def seed_image(file_name)
  "https://s3-us-west-2.amazonaws.com/bolt-network/#{file_name}"
end

genres_data = Rails.root.join('db', 'yaml_data', 'genres.yml')
genres = YAML::load_file(genres_data)

genres.each do |genre|
  Genre.create!( name: genre )
end

# Genre.create!( name: 'Action' )     # 1
# Genre.create!( name: 'Comedy' )     # 2
# Genre.create!( name: 'Drama' )      # 3
# Genre.create!( name: 'Animation' )  # 4
# Genre.create!( name: 'Family' )     # 5
# Genre.create!( name: 'Romance' )    # 6
# Genre.create!( name: 'Fantasy' )    # 7
# Genre.create!( name: 'Sci-Fi' )     # 8
# Genre.create!( name: 'Horror' )     # 9

movies_data = Rails.root.join('db', 'yaml_data', 'movies.yml')
movies = YAML::load_file(movies_data)

movies.each do |movie|
  Movie.create!(
    title: movie['title'],
    remote_photo_url: seed_image(movie['image']),
    year: movie['year'],
    rating: movie['rating'],
    length: movie['length'],
    summary: movie['summary'],
    tomato_meter: movie['tomato_meter'],
    genre_ids: movie['genre_ids']
  )
end

# MOVIE ID 1
# Movie.create!(
# 	title: 'The Avengers',
# 	remote_photo_url: seed_image('avengers-poster.jpeg'),
# 	year: 2012,
# 	rating: 'PG-13',
# 	length: '2h 23min',
# 	summary: 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity.',
# 	tomato_meter: 92,
# 	genre_ids: [1]
# )
#
# # MOVIE ID 2
# Movie.create!(
# 	title: 'Harry Potter & The Deathly Hallows Part II',
# 	remote_photo_url: seed_image('hp7-poster.jpg'),
# 	year: 2011,
# 	rating: 'PG-13',
# 	length: '2h 10min',
# 	summary: 'Harry, Ron and Hermione search for Voldemort\'s remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts.',
# 	tomato_meter: 96,
# 	genre_ids: [1,7]
# )
#
# # MOVIE ID 3
# Movie.create!(
# 	title: 'Frozen',
# 	remote_photo_url: seed_image('frozen-poster.png'),
# 	year: 2013,
# 	rating: 'PG',
# 	length: '1h 42min',
# 	summary: 'When the newly crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister, Anna, teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.',
# 	tomato_meter: 89,
# 	genre_ids: [4,5]
# )
#
# # MOVIE ID 4
# Movie.create!(
# 	title: 'Iron Man 3',
# 	remote_photo_url: seed_image('iron-man-3-poster.jpg'),
# 	year: 2013,
# 	rating: 'PG-13',
# 	length: '2h 10min',
# 	summary: 'When Tony Stark\'s world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.',
# 	tomato_meter: 79,
# 	genre_ids: [1]
# )
#
# # MOVIE ID 5
# Movie.create!(
# 	title: 'Transformers: Age of Extinction',
# 	remote_photo_url: seed_image('transformers-4-poster.jpg'),
# 	year: 2014,
# 	rating: 'PG-13',
# 	length: '2h 45min',
# 	summary: 'Autobots must escape sight from a bounty hunter who has taken control of the human serendipity: Unexpectedly, Optimus Prime and his remaining gang turn to a mechanic, his daughter, and her back street racing boyfriend for help.',
# 	tomato_meter: 18,
# 	genre_ids: [1]
# )
#
# # MOVIE ID 6
# Movie.create!(
# 	title: 'The Lord of the Rings: The Return of the King',
# 	remote_photo_url: seed_image('return-of-the-king-poster.jpg'),
# 	year: 2003,
# 	rating: 'PG-13',
# 	length: '3h 21min',
# 	summary: 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.',
# 	tomato_meter: 95,
# 	genre_ids: [1,7]
# )
#
# # MOVIE ID 7
# Movie.create!(
#     title: 'Skyfall',
#     remote_photo_url: seed_image('skyfall-poster.jpg'),
#     year: 2012,
#     rating: 'PG-13',
#     length: '2h 23min',
#     summary: 'Bond\'s loyalty to M is tested when her past comes back to haunt her. Whilst MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.',
#     tomato_meter: 93,
#     genre_ids: [1]
# )
#
# # MOVIE ID 8
# Movie.create!(
# 	title: 'The Dark Knight',
# 	remote_photo_url: seed_image('the-dark-knight-poster.jpg'),
# 	year: 2008,
# 	rating: 'PG-13',
# 	length: '2h 32min',
# 	summary: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, the caped crusader must come to terms with one of the greatest psychological tests of his ability to fight injustice.',
# 	tomato_meter: 94,
# 	genre_ids: [1]
# )
#
# # MOVIE ID 9
# Movie.create!(
# 	title: 'Pirates of the Caribbean: The Curse of the Black Pearl',
# 	remote_photo_url: seed_image('pirates-curse-of-the-black-pearl-poster.jpg'),
# 	year: 2003,
# 	rating: 'PG-13',
# 	length: '2h 23min',
# 	summary: 'Blacksmith Will Turner teams up with eccentric pirate "Captain" Jack Sparrow to save his love, the governor\'s daughter, from Jack\'s former pirate allies, who are now undead.',
# 	tomato_meter: 79,
# 	genre_ids: [1]
# )
#
# # MOVIE ID 10
# Movie.create!(
# 	title: 'Toy Story 3',
# 	remote_photo_url: seed_image('toy-story-3-poster.jpg'),
# 	year: 2010,
# 	rating: 'G',
# 	length: '1h 43min',
# 	summary: 'The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it\'s up to Woody to convince the other toys that they weren\'t abandoned and to return home.',
# 	tomato_meter: 99,
# 	genre_ids: [4,5]
# )
#
# # MOVIE ID 11
# Movie.create!(
# 	title: 'Conan the Barbarian',
# 	remote_photo_url: seed_image('conan-the-barbarian-poster.jpg'),
# 	year: 1982,
# 	rating: 'R',
# 	length: '2h 9min',
# 	summary: 'A vengeful barbarian warrior sets off to avenge his tribe and his parents whom were slain by an evil sorcerer and his warriors when he was a boy.',
#   genre_ids: [1,7]
# )
#
# #MOVIE ID 12
# Movie.create!(
# 	title: 'Braveheart',
# 	remote_photo_url: seed_image('braveheart-poster.jpg'),
# 	year: 1995,
# 	rating: 'R',
# 	length: '2h 58min',
# 	summary: 'When his secret bride is executed for assaulting an English soldier who tried to rape her, William Wallace begins a revolt against King Edward I of England.',
#   genre_ids: [1,3]
# )
#
# #MOVIE ID 13
# Movie.create!(
# 	title: 'Die Hard',
# 	remote_photo_url: seed_image('die-hard-poster.jpg'),
# 	year: 1988,
# 	rating: 'R',
# 	length: '2h 11min',
# 	summary: 'John McClane, officer of the NYPD, tries to save his wife Holly Gennaro and several others that were taken hostage by German terrorist Hans Gruber during a Christmas party at the Nakatomi Plaza in Los Angeles.',
#   genre_ids: [1]
# )
#
# #MOVIE ID 14
# Movie.create!(
# 	title: 'The 40 Year-Old Virgin',
# 	remote_photo_url: seed_image('40-year-old-virgin-poster.jpg'),
# 	year: 2005,
# 	rating: 'R',
# 	length: '1h 56min',
# 	summary: 'Goaded by his buddies, a nerdy guy who\'s never "done the deed" only finds the pressure mounting when he meets a single mother.',
#   genre_ids: [2]
# )
#
# #MOVIE ID 15
# Movie.create!(
# 	title: 'Superbad',
# 	remote_photo_url: seed_image('superbad-poster.jpg'),
# 	year: 2007,
# 	rating: 'R',
# 	length: '1h 53min',
# 	summary: 'Two co-dependent high school seniors are forced to deal with separation anxiety after their plan to stage a booze-soaked party goes awry.',
#   genre_ids: [2]
# )
#
# #MOVIE ID 16
# Movie.create!(
# 	title: 'The Interview',
# 	remote_photo_url: seed_image('the-interview-poster.jpg'),
# 	year: 2014,
# 	rating: 'R',
# 	length: '1h 52min',
# 	summary: 'Dave Skylark and producer Aaron Rapoport run the celebrity tabloid show "Skylark Tonight." When they land an interview with a surprise fan, North Korean dictator Kim Jong-un, they are recruited by the CIA to turn their trip to Pyongyang into an assassination mission.',
#   genre_ids: [2]
# )
#
# #MOVIE ID 17
# Movie.create!(
# 	title: 'Deadpool',
# 	remote_photo_url: seed_image('deadpool-poster.jpg'),
# 	year: 2016,
# 	rating: 'R',
# 	length: '1h 48min',
# 	summary: 'A former Special Forces operative turned mercenary is subjected to a rogue experiment that leaves him with accelerated healing powers, adopting the alter ego Deadpool.',
#   genre_ids: [1,2]
# )
#
# #MOVIE ID 18
# Movie.create!(
# 	title: 'Wedding Crashers',
# 	remote_photo_url: seed_image('wedding-crashers-poster.jpg'),
# 	year: 2005,
# 	rating: 'R',
# 	length: '1h 59min',
# 	summary: 'John Beckwith and Jeremy Grey, a pair of committed womanizers who sneak into weddings to take advantage of the romantic tinge in the air, find themselves at odds with one another when John meets and falls for Claire Cleary.',
#   genre_ids: [2]
# )
#
# #MOVIE ID 19
# Movie.create!(
# 	title: 'Bridesmaids',
# 	remote_photo_url: seed_image('bridesmaids-poster.jpg'),
# 	year: 2011,
# 	rating: 'R',
# 	length: '2h 5min',
# 	summary: 'Competition between the maid of honor and a bridesmaid, over who is the bride\'s best friend, threatens to upend the life of an out-of-work pastry chef.',
#   genre_ids: [2]
# )
#
# #MOVIE ID 20
# Movie.create!(
# 	title: 'Shaun of the Dead',
# 	remote_photo_url: seed_image('shaun-of-the-dead-poster.jpg'),
# 	year: 2004,
# 	rating: 'R',
# 	length: '1h 39min',
# 	summary: 'A man decides to turn his moribund life around by winning back his ex-girlfriend, reconciling his relationship with his mother, and dealing with an entire community that has returned from the dead to eat the living.',
#   genre_ids: [2,9]
# )
#
# #MOVIE ID 21
# Movie.create!(
# 	title: 'Borat',
# 	remote_photo_url: seed_image('borat-poster.jpg'),
# 	year: 2006,
# 	rating: 'R',
# 	length: '1h 24min',
# 	summary: 'Kazakh TV talking head Borat is dispatched to the United States to report on the greatest country in the world. With a documentary crew in tow, Borat becomes more interested in locating and marrying Pamela Anderson.',
#   genre_ids: [2]
# )
#
# #MOVIE ID 22
# Movie.create!(
# 	title: 'The Hangover',
# 	remote_photo_url: seed_image('the-hangover-poster.jpg'),
# 	year: 2009,
# 	rating: 'R',
# 	length: '1h 40min',
# 	summary: 'Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.',
#   genre_ids: [2]
# )
#
# #MOVIE ID 23
# Movie.create!(
# 	title: 'Ghostbusters',
# 	remote_photo_url: seed_image('ghostbusters-poster.jpg'),
# 	year: 1984,
# 	rating: 'PG',
# 	length: '1h 45min',
# 	summary: 'Three former parapsychology professors set up shop as a unique ghost removal service.',
#   genre_ids: [1,2,7]
# )
#
# #MOVIE ID 24
# Movie.create!(
# 	title: 'Maverick',
# 	remote_photo_url: seed_image('maverick-poster.jpg'),
# 	year: 1994,
# 	rating: 'PG',
# 	length: '2h 7min',
# 	summary: 'Bret Maverick, needing money for a poker tournament, faces various comic mishaps and challenges, including a charming woman thief.',
#   genre_ids: [1,2]
# )
#
# #MOVIE ID 25
# Movie.create!(
# 	title: 'The Princess Bride',
# 	remote_photo_url: seed_image('the-princess-bride-poster.jpg'),
# 	year: 1987,
# 	rating: 'PG',
# 	length: '1h 38min',
# 	summary: "This cult classic comedy-romance follows a peasant farmhand as he battles bumbling outlaws and an evil prince to win the hand of his one true love.",
#   genre_ids: [1,2,5]
# )
#
# #MOVIE ID 26
# Movie.create!(
# 	title: 'American Psycho',
# 	remote_photo_url: seed_image('american-psycho-poster.jpg'),
# 	year: 2000,
# 	rating: 'R',
# 	length: '1h 42min',
# 	summary: 'A wealthy New York investment banking executive hides his alternate psychopathic ego from his co-workers and friends as he delves deeper into his violent, hedonistic fantasies.',
#   genre_ids: [2,9]
# )
#
# #MOVIE ID 27
# Movie.create!(
# 	title: 'Forest Gump',
# 	remote_photo_url: seed_image('forest-gump-poster.jpg'),
# 	year: 1994,
# 	rating: 'PG-13',
# 	length: '2h 22min',
# 	summary: 'Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.',
#   genre_ids: [3]
# )
#
# #MOVIE ID 28
# Movie.create!(
# 	title: 'The Shawshank Redemption',
# 	remote_photo_url: seed_image('shawshank-poster.jpg'),
# 	year: 1994,
# 	rating: 'R',
# 	length: '2h 22min',
# 	summary: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
#   genre_ids: [3]
# )
#
# #MOVIE ID 29
# Movie.create!(
# 	title: 'The Godfather',
# 	remote_photo_url: seed_image('the-godfather-poster.png'),
# 	year: 1972,
# 	rating: 'R',
# 	length: '2h 55min',
# 	summary: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
#   genre_ids: [3]
# )
#
# #MOVIE ID 30
# Movie.create!(
# 	title: "Schindler's List",
# 	remote_photo_url: seed_image('schindlers-list-poster.png'),
# 	year: 1993,
# 	rating: 'R',
# 	length: '3h 15min',
# 	summary: 'In Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.',
#   genre_ids: [3]
# )
#
# #MOVIE ID 31
# Movie.create!(
# 	title: "Slumdog Millionaire",
# 	remote_photo_url: seed_image('slumdog-millionaire-poster.jpg'),
# 	year: 2008,
# 	rating: 'R',
# 	length: '2h',
# 	summary: 'A Mumbai teen reflects on his upbringing in the slums when he is accused of cheating on the Indian Version of "Who Wants to be a Millionaire?"',
#   genre_ids: [3]
# )
#
# #MOVIE ID 32
# Movie.create!(
# 	title: "Good Will Hunting",
# 	remote_photo_url: seed_image('good-will-hunting-poster.jpg'),
# 	year: 1997,
# 	rating: 'R',
# 	length: '2h 6min',
# 	summary: "Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.",
#   genre_ids: [3]
# )
#
# #MOVIE ID 33
# Movie.create!(
# 	title: "12 Angry Men",
# 	remote_photo_url: seed_image('12-angry-men-poster.jpg'),
# 	year: 1957,
# 	rating: 'NR',
# 	length: '1h 36min',
# 	summary: "A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.",
#   genre_ids: [3]
# )
#
# #MOVIE ID 34
# Movie.create!(
# 	title: "Inherit the Wind",
# 	remote_photo_url: seed_image('inherit-the-wind-poster.png'),
# 	year: 1960,
# 	rating: 'NR',
# 	length: '2h 8min',
# 	summary: "Based on a real-life case in 1925, two great lawyers argue the case for and against a science teacher accused of the crime of teaching evolution.",
#   genre_ids: [3]
# )
#
# #MOVIE ID 35
# Movie.create!(
# 	title: "Casablanca",
# 	remote_photo_url: seed_image('casablanca-poster.jpg'),
# 	year: 1942,
# 	rating: 'PG',
# 	length: '1h 42min',
# 	summary: "In Casablanca, Morocco during the early days of World War II, an American expatriate meets a former lover, with unforeseen complications.",
#   genre_ids: [3,6]
# )
#
# #MOVIE ID 36
# Movie.create!(
# 	title: "Fight Club",
# 	remote_photo_url: seed_image('fight-club-poster.jpg'),
# 	year: 1999,
# 	rating: 'R',
# 	length: '2h 19min',
# 	summary: "An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soap maker, forming an underground fight club that evolves into something much, much more...",
#   genre_ids: [3]
# )
#
# #MOVIE ID 37
# Movie.create!(
# 	title: "The Lion King",
# 	remote_photo_url: seed_image('the-lion-king-poster.jpg'),
# 	year: 1994,
# 	rating: 'G',
# 	length: '1h 29min',
# 	summary: "Lion cub and future king Simba searches for his identity. His eagerness to please others and penchant for testing his boundaries sometimes gets him into trouble.",
#   genre_ids: [4]
# )
#
# #MOVIE ID 38
# Movie.create!(
# 	title: "Ratatouille",
# 	remote_photo_url: seed_image('ratatouille-poster.jpg'),
# 	year: 2007,
# 	rating: 'G',
# 	length: '1h 51min',
# 	summary: "A rat who can cook makes an unusual alliance with a young kitchen worker at a famous restaurant.",
#   genre_ids: [2,4,5]
# )
#
# #MOVIE ID 39
# Movie.create!(
# 	title: "Finding Nemo",
# 	remote_photo_url: seed_image('finding-nemo-poster.jpg'),
# 	year: 2003,
# 	rating: 'G',
# 	length: '1h 40min',
# 	summary: "After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.",
#   genre_ids: [4,5]
# )
#
# #MOVIE ID 40
# Movie.create!(
# 	title: "Spirited Away",
# 	remote_photo_url: seed_image('spirited-away-poster.jpg'),
# 	year: 2001,
# 	rating: 'PG',
# 	length: '2h 5min',
# 	summary: "During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.",
#   genre_ids: [4,5]
# )
#
# #MOVIE ID 41
# Movie.create!(
# 	title: "Shrek 2",
# 	remote_photo_url: seed_image('shrek-2-poster.jpg'),
# 	year: 2004,
# 	rating: 'PG',
# 	length: '1h 33min',
# 	summary: "Princess Fiona's parents invite her and Shrek to dinner to celebrate her marriage. If only they knew the newlyweds were both ogres.",
#   genre_ids: [2,4,5]
# )
#
# #MOVIE ID 42
# Movie.create!(
# 	title: "The Incredibles",
# 	remote_photo_url: seed_image('the-incredibles-poster.jpg'),
# 	year: 2004,
# 	rating: 'PG',
# 	length: '1h 55min',
# 	summary: "A family of undercover superheroes, while trying to live the quiet suburban life, are forced into action to save the world.",
#   genre_ids: [1,4,5]
# )
#
# #MOVIE ID 43
# Movie.create!(
# 	title: "Aladdin",
# 	remote_photo_url: seed_image('aladdin-poster.jpg'),
# 	year: 1992,
# 	rating: 'G',
# 	length: '1h 30min',
# 	summary: "When a street urchin vies for the love of a beautiful princess, he uses a genie's magic power to make himself off as a prince in order to marry her.",
#   genre_ids: [2,4,5]
# )
#
# #MOVIE ID 44
# Movie.create!(
# 	title: "The Nightmare Before Christmas",
# 	remote_photo_url: seed_image('nightmare-before-christmas-poster.jpg'),
# 	year: 1993,
# 	rating: 'PG',
# 	length: '1h 16min',
# 	summary: "Jack Skellington, king of Halloween Town, discovers Christmas Town, but doesn't quite understand the concept.",
#   genre_ids: [4,5,7]
# )
#
# #MOVIE ID 45
# Movie.create!(
# 	title: "E.T.",
# 	remote_photo_url: seed_image('ET-poster.jpg'),
# 	year: 1982,
# 	rating: 'PG',
# 	length: '1h 55min',
# 	summary: "A troubled child summons the courage to help a friendly alien escape Earth and return to his home-world.",
#   genre_ids: [5]
# )
#
# #MOVIE ID 46
# Movie.create!(
# 	title: "Explorers",
# 	remote_photo_url: seed_image('explorers-poster.jpg'),
# 	year: 1985,
# 	rating: 'PG',
# 	length: '1h 49min',
# 	summary: "A boy obsessed with 50s sci-fi movies about aliens has a recurring dream about a blueprint of some kind, which he draws for his inventor friend. With the help of a third kid, they follow it and build themselves a spaceship.",
#   genre_ids: [1,5]
# )
#
# #MOVIE ID 47
# Movie.create!(
# 	title: "The Sandlot",
# 	remote_photo_url: seed_image('sandlot-poster.jpg'),
# 	year: 1993,
# 	rating: 'PG',
# 	length: '1h 41min',
# 	summary: "A new kid in town is taken under the wing of a young baseball prodigy and his team in this coming of age movie set in the summer of 1962. Together, they get themselves into many adventures involving rival teams, lifeguards, and a vicious dog.",
#   genre_ids: [2,5]
# )
#
# #MOVIE ID 48
# Movie.create!(
# 	title: "The Goonies",
# 	remote_photo_url: seed_image('goonies-poster.jpg'),
# 	year: 1985,
# 	rating: 'PG',
# 	length: '1h 54min',
# 	summary: "In order to save their home from foreclosure, a group of misfits set out to find a pirate's ancient treasure.",
#   genre_ids: [1,2,5]
# )
#
# #MOVIE ID 49
# Movie.create!(
# 	title: "Love Actually",
# 	remote_photo_url: seed_image('love-actually-poster.png'),
# 	year: 2003,
# 	rating: 'R',
# 	length: '2h 15min',
# 	summary: "Follows the lives of eight very different couples in dealing with their love lives in various loosely interrelated tales all set during a frantic month before Christmas in London, England.",
#   genre_ids: [2,3,6]
# )
#
# #MOVIE ID 50
# Movie.create!(
# 	title: "When Harry Met Sally",
# 	remote_photo_url: seed_image('when-harry-met-sally-poster.jpg'),
# 	year: 1989,
# 	rating: 'R',
# 	length: '1h 36min',
# 	summary: "Harry and Sally have known each other for years, and are very good friends, but they fear sex would ruin the friendship.",
#   genre_ids: [2,3,6]
# )
#
# #MOVIE ID 51
# Movie.create!(
# 	title: "Gone with the Wind",
# 	remote_photo_url: seed_image('gone-with-the-wind-poster.jpg'),
# 	year: 1939,
# 	rating: 'G',
# 	length: '3h 58min',
# 	summary: "A manipulative Southern belle carries on a turbulent affair with a blockade runner during the American Civil War.",
#   genre_ids: [3,6]
# )
#
# #MOVIE ID 52
# Movie.create!(
# 	title: "Dirty Dancing",
# 	remote_photo_url: seed_image('dirty-dancing-poster.jpg'),
# 	year: 1987,
# 	rating: 'PG-13',
# 	length: '1h 40min',
# 	summary: 'Spending the summer at a Catskills resort with her family, Frances "Baby" Houseman falls in love with the camp\'s dance instructor, Johnny Castle.',
#   genre_ids: [3,6]
# )
#
# #MOVIE ID 53
# Movie.create!(
# 	title: "Titanic",
# 	remote_photo_url: seed_image('titanic-poster.jpg'),
# 	year: 1997,
# 	rating: 'PG-13',
# 	length: '3h 14min',
# 	summary: "A seventeen-year-old aristocrat falls in love with a kind, but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.",
#   genre_ids: [3,6]
# )
#
# #MOVIE ID 54
# Movie.create!(
# 	title: "Amelie",
# 	remote_photo_url: seed_image('amelie-poster.jpg'),
# 	year: 2001,
# 	rating: 'R',
# 	length: '2h 2min',
# 	summary: "Amelie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.",
#   genre_ids: [2,6]
# )
#
# #MOVIE ID 55
# Movie.create!(
# 	title: "Before Sunrise",
# 	remote_photo_url: seed_image('before-sunrise-poster.jpg'),
# 	year: 1995,
# 	rating: 'R',
# 	length: '1h 45min',
# 	summary: "A young man and woman meet on a train in Europe, and wind up spending one evening together in Vienna. Unfortunately, both know that this will probably be their only night together.",
#   genre_ids: [3,6]
# )
#
# #MOVIE ID 56
# Movie.create!(
# 	title: "Breakfast at Tiffany's",
# 	remote_photo_url: seed_image('breakfast-at-tiffanys-poster.jpg'),
# 	year: 1961,
# 	rating: 'NR',
# 	length: '1h 55min',
# 	summary: "A young New York socialite becomes interested in a young man who has moved into her apartment building.",
#   genre_ids: [2,3,6]
# )
#
# #MOVIE ID 57
# Movie.create!(
# 	title: "Willow",
# 	remote_photo_url: seed_image('willow-poster.jpg'),
# 	year: 1988,
# 	rating: 'PG',
# 	length: '2h 6min',
# 	summary: "A reluctant dwarf must play a critical role in protecting a special baby from an evil queen.",
#   genre_ids: [1,7]
# )
#
# #MOVIE ID 58
# Movie.create!(
# 	title: "Time Bandits",
# 	remote_photo_url: seed_image('time-bandits-poster.jpg'),
# 	year: 1981,
# 	rating: 'PG',
# 	length: '1h 50min',
# 	summary: "A young boy accidentally joins a band of dwarves as they jump from era to era looking for treasure to steal.",
#   genre_ids: [1,2,7]
# )
#
# #MOVIE ID 59
# Movie.create!(
# 	title: "The Wizard of Oz",
# 	remote_photo_url: seed_image('wizard-of-oz-poster.jpg'),
# 	year: 1939,
# 	rating: 'G',
# 	length: '1h 42min',
# 	summary: "Dorothy Gale is swept away to a magical land in a tornado and embarks on a quest to see the Wizard who can help her return home.",
#   genre_ids: [5,7]
# )
#
# # MOVIE ID 60
# Movie.create!(
# 	title: "The NeverEnding Story",
# 	remote_photo_url: seed_image('neverending-story-poster.jpg'),
# 	year: 1984,
# 	rating: 'PG',
# 	length: '1h 42min',
# 	summary: "A troubled boy dives into a wonderous fantasy world through the pages of a mysterious book.",
#   genre_ids: [1,5,7]
# )
#
# # MOVIE ID 61
# Movie.create!(
# 	title: "Star Wars",
# 	remote_photo_url: seed_image('star-wars-poster.jpg'),
# 	year: 1977,
# 	rating: 'PG',
# 	length: '2h 1min',
# 	summary: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a wookiee and two droids to save the galaxy from the Empire's world-destroying battle-station, while also attempting to rescue Princess Leia from the evil Darth Vader.",
#   genre_ids: [1,7,8]
# )
#
# # MOVIE ID 62
# Movie.create!(
# 	title: "Alien",
# 	remote_photo_url: seed_image('alien-poster.jpg'),
# 	year: 1979,
# 	rating: 'R',
# 	length: '1h 57min',
# 	summary: "After a space merchant vessel perceives an unknown transmission as distress call, their landing on the source planet finds one of the crew attacked by a mysterious lifeform. Continuing their journey back to Earth with the attacked crew having recovered and the critter deceased, they soon realize that its life cycle has merely begun.",
#   genre_ids: [8,9]
# )
#
# # MOVIE ID 63
# Movie.create!(
# 	title: "Blade Runner",
# 	remote_photo_url: seed_image('blade-runner-poster.jpg'),
# 	year: 1982,
# 	rating: 'R',
# 	length: '1h 57min',
# 	summary: "A blade runner must pursue and try to terminate four replicants who stole a ship in space and have returned to Earth to find their creator.",
#   genre_ids: [1,8]
# )
#
# # MOVIE ID 64
# Movie.create!(
# 	title: "The Terminator",
# 	remote_photo_url: seed_image('the-terminator-poster.jpg'),
# 	year: 1984,
# 	rating: 'R',
# 	length: '1h 47min',
# 	summary: "A human-looking indestructible cyborg is sent from 2029 to 1984 to assassinate a waitress, whose unborn son will lead humanity in a war against the machines, while a soldier from that war is sent to protect her at all costs.",
#   genre_ids: [1,8]
# )
#
# # MOVIE ID 65
# Movie.create!(
# 	title: "The Matrix",
# 	remote_photo_url: seed_image('the-matrix-poster.jpg'),
# 	year: 1999,
# 	rating: 'R',
# 	length: '2h 16min',
# 	summary: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
#   genre_ids: [1,8]
# )
#
# # MOVIE ID 66
# Movie.create!(
# 	title: "2001: A Space Odyssey",
# 	remote_photo_url: seed_image('2001-poster.jpg'),
# 	year: 1968,
# 	rating: 'G',
# 	length: '2h 29min',
# 	summary: "Humanity finds a mysterious, obviously artificial object buried beneath the Lunar surface and, with the intelligent computer H.A.L. 9000, sets off on a quest.",
#   genre_ids: [1,8]
# )
#
# # MOVIE ID 67
# Movie.create!(
# 	title: "District 9",
# 	remote_photo_url: seed_image('district-9-poster.jpg'),
# 	year: 2009,
# 	rating: 'R',
# 	length: '1h 52min',
# 	summary: "An extraterrestrial race forced to live in slum-like conditions on Earth suddenly finds a kindred spirit in a government agent who is exposed to their biotechnology.",
#   genre_ids: [1,8]
# )
#
# # MOVIE ID 68
# Movie.create!(
# 	title: "Serenity",
# 	remote_photo_url: seed_image('serenity-poster.jpg'),
# 	year: 2005,
# 	rating: 'PG-13',
# 	length: '1h 59min',
# 	summary: "The crew of the ship Serenity tries to evade an assassin sent to recapture one of their number who is telepathic.",
#   genre_ids: [1,8]
# )
#
# # MOVIE ID 69
# Movie.create!(
# 	title: "Inception",
# 	remote_photo_url: seed_image('inception-poster.jpg'),
# 	year: 2010,
# 	rating: 'PG-13',
# 	length: '2h 28min',
# 	summary: "A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.",
#   genre_ids: [1,8]
# )
#
# # MOVIE ID 70
# Movie.create!(
# 	title: "Star Trek II: The Wrath of Khan",
# 	remote_photo_url: seed_image('star-trek-2-poster.jpg'),
# 	year: 1982,
# 	rating: 'PG',
# 	length: '1h 53min',
# 	summary: "With the assistance of the Enterprise crew, Admiral Kirk must stop an old nemesis, Khan Noonien Singh, from using the life-generating Genesis Device as the ultimate weapon.",
#   genre_ids: [1,8]
# )
#
# # MOVIE ID 71
# Movie.create!(
# 	title: "The Shining",
# 	remote_photo_url: seed_image('the-shining-poster.jpg'),
# 	year: 1980,
# 	rating: 'R',
# 	length: '2h 26min',
# 	summary: "A family heads to an isolated hotel for the winter where an evil and spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from the past and of the future.",
#   genre_ids: [3,9]
# )
#
# # MOVIE ID 72
# Movie.create!(
# 	title: "Halloween",
# 	remote_photo_url: seed_image('halloween-poster.jpg'),
# 	year: 1978,
# 	rating: 'R',
# 	length: '1h 31min',
# 	summary: "On Halloween night of 1963, six-year-old Michael Myers stabbed his sister to death. After sitting in a mental hospital for 15 years, Myers escapes and returns to Haddonfield to kill.",
#   genre_ids: [9]
# )
#
# # MOVIE ID 73
# Movie.create!(
# 	title: "The Silence of the Lambs",
# 	remote_photo_url: seed_image('silence-of-the-lambs-poster.jpg'),
# 	year: 1991,
# 	rating: 'R',
# 	length: '1h 58min',
# 	summary: "A young F.B.I. cadet must confide in an incarcerated and manipulative killer to receive his help on catching another serial killer who skins his victims.",
#   genre_ids: [3,9]
# )
#
# # MOVIE ID 74
# Movie.create!(
# 	title: "Psycho",
# 	remote_photo_url: seed_image('psycho-poster.jpg'),
# 	year: 1960,
# 	rating: 'R',
# 	length: '1h 49min',
# 	summary: "A Phoenix secretary steals $40,000 from her employer's client, goes on the run and checks into a remote motel run by a young man under the domination of his mother.",
#   genre_ids: [9]
# )
#
# # MOVIE ID 75
# Movie.create!(
# 	title: "The Babadook",
# 	remote_photo_url: seed_image('the-babadook-poster.jpg'),
# 	year: 2014,
# 	rating: 'NR',
# 	length: '1h 33min',
# 	summary: "A single mother, plagued by the violent death of her husband, battles with her son's fear of a monster lurking in the house, but soon discovers a sinister presence all around her.",
#   genre_ids: [9]
# )
#
# # MOVIE ID 76
# Movie.create!(
# 	title: "The Exorcist",
# 	remote_photo_url: seed_image('the-exorcist-poster.jpg'),
# 	year: 1973,
# 	rating: 'R',
# 	length: '2h 2min',
# 	summary: "When a teenage girl is possessed by a mysterious entity, her mother seeks the help of two priests to save her daughter.",
#   genre_ids: [9]
# )
#
# # MOVIE ID 77
# Movie.create!(
# 	title: "The Ring",
# 	remote_photo_url: seed_image('the-ring-poster.jpg'),
# 	year: 2002,
# 	rating: 'PG-13',
# 	length: '1h 55min',
# 	summary: "A journalist must investigate a mysterious videotape which seems to cause the death of anyone in a week of viewing it.",
#   genre_ids: [9]
# )
#
# # MOVIE ID 78
# Movie.create!(
# 	title: "The Thing",
# 	remote_photo_url: seed_image('the-thing-poster.jpg'),
# 	year: 1982,
# 	rating: 'R',
# 	length: '1h 49min',
# 	summary: "It's the first week of winter in 1982. An American Research Base is greeted by an alien force, that can assimilate anything it touches. It's up to the members to stay alive, and be sure of who is human, and who has become one of the Things.",
#   genre_ids: [8,9]
# )
#
# # MOVIE ID 79
# Movie.create!(
# 	title: "The Orphanage",
# 	remote_photo_url: seed_image('the-orphanage-poster.jpg'),
# 	year: 2007,
# 	rating: 'R',
# 	length: '1h 45min',
# 	summary: "A woman brings her family back to her childhood home, which used to be an orphanage for handicapped children. Before long, her son starts to communicate with an invisible new friend.",
#   genre_ids: [9]
# )
#
# # MOVIE ID 80
# Movie.create!(
# 	title: "Poltergeist",
# 	remote_photo_url: seed_image('poltergeist-poster.jpg'),
# 	year: 1982,
# 	rating: 'PG',
# 	length: '1h 54min',
# 	summary: "A family's home is haunted by a host of ghosts. When their daughter is taken over to the other side, they hire a medium to bring her back.",
#   genre_ids: [7,9]
# )
