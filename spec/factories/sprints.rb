FactoryBot.define do
  factory :sprint do
    number { 1 }
    start_date { "2023-07-08 18:33:46" }
    end_date { "2023-07-08 18:33:46" }
    is_active { false }
    is_successful { false }
    kudos_id { 1 }
    manager_id { 1 }
    user_id { 1 }
    description { "MyText" }
    name { "MyString" }
  end
end
