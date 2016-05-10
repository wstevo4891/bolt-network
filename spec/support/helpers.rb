require 'support/helpers'
RSpec.configure do |config|
  config.include FeatureHelpers, type: :feature
  config.include ResponsiveHelpers, type: :feature
end
