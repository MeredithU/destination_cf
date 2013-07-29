FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@travelapp.com" }
    password "password"
    password_confirmation "password"
  end
end
