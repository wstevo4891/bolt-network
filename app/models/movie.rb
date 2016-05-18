class Movie < ActiveRecord::Base
	has_and_belongs_to_many :genres
	validates :title, :photo, :year, :rating, :length, :summary, presence: true
	mount_uploader :photo, PhotoUploader
	# mount_uploaders :scenes, PhotoUploader

	def self.search(search)
		Movie.where('title ~* :search', search: "(#{search})")
	end

	def self.carousel_data(genre, array1, array2)
		@carousel_movies = Movie.where( Movie.genre_ids.include?(genre.id) )
		@carousel_movies.each do |movie|
			array1.push(movie.photo)
			array2.push(movie.id)
		end
	end
end
