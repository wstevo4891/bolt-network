FactoryGirl.define do
  factory :genre do
    name "Action-Adventure"

    trait :invalid do
    	name nil
    end
  end

end
