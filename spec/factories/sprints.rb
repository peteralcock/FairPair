
FactoryBot.define do
  factory :sprint do
    start_date { FFaker::Time.date }
    end_date { start_date + 14.days }
    manager_id { 1 }
    user_id { 1 }
    description { "Melt the cage using improvised heating element" }
    name { "Escape the laboratory!" }
  end
end