require 'faker'
FactoryGirl.define do
  password =  Faker::Internet.password(10)

  factory :user do |user|
    user.email { Faker::Internet.email }
    user.name { Faker::Name.name }
    user.password { password }
    user.password_confirmation { password }
    confirmed_at          Time.now
  end
end

