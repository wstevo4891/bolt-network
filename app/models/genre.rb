class Genre < ActiveRecord::Base
	has_and_belongs_to_many :movies
	has_many :subgenres
	validates :name, presence: true
end
