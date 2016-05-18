class Movie < ActiveRecord::Base
	has_and_belongs_to_many :genres
	validates :title, :photo, :year, :rating, :length, :summary, presence: true
	mount_uploader :photo, PhotoUploader
	mount_uploaders :images, PhotoUploader

	def self.search(search)
	#	Movie.find_by title: "#{search}"
		Movie.where('title ~* :search', search: "(#{search})")
	end
end
