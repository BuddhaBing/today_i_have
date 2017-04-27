FactoryGirl.define do

  names = %w(Rob Craig Kyle Mark Rick Lisa Sarah Gillian Rebecca Samantha).shuffle

  sequence :name do |n|
    names[n-1]
  end
  sequence :email do |n|
    "#{names[n-1].downcase}@example.com"
  end
  factory :user do
    name
    email
    password "somethingsecure"
  end
end
