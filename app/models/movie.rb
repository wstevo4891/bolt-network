class Movie < ActiveRecord::Base
	has_and_belongs_to_many :genres
	validates :title, :photo, :year, :rating, :length, :summary, presence: true
	mount_uploader :photo, PhotoUploader
	# mount_uploaders :scenes, PhotoUploader

	def self.search(search)
		Movie.where('title ~* :search', search: "(#{search})")
	end
end
