FactoryGirl.define do

  names = []
  20.times { names << Faker::Name.unique.name }

  sequence :name do |n|
    names[n-1]
  end

  sequence :email do |n|
    "email-#{n}@example.com"
  end

  factory :user do
    name
    email
    password "somethingsecure"
  end
end
