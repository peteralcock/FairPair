FactoryBot.define do
  factory :pto_request do
    status { nil}
    approved_at { [Time.now,nil].sample}
    manager_id { 1 }
    note { "May I please go to the Marilyn Manson concert instead?" }
    developer { create(:developer) }
    start_date { Date.today }
    end_date { Date.today + 1.week }
  end
end
