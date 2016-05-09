FactoryGirl.define do
  factory :movie do
    title "Star Trek"
    photo Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/images/star-trek.jpg')))
    summary "James Kirk and the crew of the enterprise embark on the first mission out of Starfleet Academy."
    rating 95

    trait :invalid do
    	title nil
    end
  end
end
