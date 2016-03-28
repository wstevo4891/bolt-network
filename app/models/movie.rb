class Movie < ActiveRecord::Base
	has_many :movie_genres
	has_many :genres, through: :movie_genres
	validates :title, :photo, :summary, :rating, presence: true
	mount_uploader :photo, PhotoUploader
end
