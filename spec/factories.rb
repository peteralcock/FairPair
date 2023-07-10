# spec/factories.rb

FactoryBot.define do
  factory :pairing do
    developer1 { create(:developer) }
    developer2 { create(:developer) }
    sprint { create(:sprint) }
  end

  factory :project do
    name { FFaker::Product.product_name }
    number_of_sprints { rand(1..10) }
    developers { create_list(:developer, 2) }
  end

  factory :user do
    name { FFaker::Name.name }
    email { FFaker::Internet.email }
    password { FFaker::Internet.password }
  end

  factory :developer do
    name { FFaker::Name.name }
  end

  factory :sprint do
    start_date { FFaker::Time.date }
    end_date { FFaker::Time.date }
  end

  factory :pto_request do
    developer { create(:developer) }
    start_date { FFaker::Time.date }
    end_date { FFaker::Time.date }
  end
end
