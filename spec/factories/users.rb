FactoryBot.define do
  factory :user do
    password "12345678"
    sequence(:email){|n| "dmmy_#{n}@factory.com" }
  end
end
