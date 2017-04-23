class Genre < ActiveRecord::Base
	has_and_belongs_to_many :movies
	has_many :subgenres
	validates :name, presence: true

	# include ActionView::Helpers::AssetTagHelper
	# include Rails.application.routes.url_helpers
	# include ActionView::Helpers::UrlHelper


end
