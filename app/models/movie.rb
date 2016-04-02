class Movie < ActiveRecord::Base
	has_and_belongs_to_many :genres
	validates :title, :photo, :summary, :rating, presence: true
	mount_uploader :photo, PhotoUploader

	def self.search(search)
		Movie.find_by title: "#{search}"
	end
end
