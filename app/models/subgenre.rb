class Subgenre < ActiveRecord::Base
	belongs_to :genre
	validates :name, presence: true
end
