FactoryBot.define do
  factory :pto_request do
    start_date { "2023-07-08 20:46:28" }
    end_date { "2023-07-11 20:46:28" }
    developer { nil }
    status { nil}
    approved_at { "2023-07-08 20:47:28" }
    manager_id { nil }
    note { "May I please go to the Marilyn Manson concert instead?" }
  end
end
