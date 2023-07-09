FactoryBot.define do
  factory :pto_request do
    start_date { "2023-07-08 20:46:28" }
    end_date { "2023-07-08 20:46:28" }
    developer { nil }
    status { "MyString" }
    approved_at { "2023-07-08 20:46:28" }
    manager_id { 1 }
    note { "MyText" }
  end
end
