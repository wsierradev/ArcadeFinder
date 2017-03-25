FactoryGirl.define do
  factory :game do
    sequence(:name) { |n| "Pac#{n}Man" }
    sequence(:quantity) { |n| "1#{n}" }
    sequence(:working) { true }
  end
end
