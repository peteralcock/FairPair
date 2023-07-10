FactoryBot.define do
  factory :sprint do
    number { rand(1000) }
    start_date { FFaker::Time.date }
    end_date { FFaker::Time.date + 7.days }
    manager_id { 1 }
    user_id { 1 }
    description { "Melt the cage using improvised heating element" }
    name { "Escape the laboratory!" }
  end
end
