FactoryBot.define do
  factory :sprint do
    number { rand(1000) }
    start_date { "2023-07-08 18:33:46" }
    end_date { "2023-07-15 18:33:46" }
    is_active {  true }
    is_successful { nil }
    kudos_id { nil }
    manager_id { 1 }
    user_id { 1 }
    description { "Melt the cage using improvised heating element" }
    name { "Escape the laboratory!" }
  end
end
