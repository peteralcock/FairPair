FactoryBot.define do
  factory :project do
    lead_developer_id { 1 }
    name { "OPERATION: Big Cheese" }
    description { "The same thing we do every night, Pinky...try and take over the world." }
    status { "Pending" }
    user_id { 1 }
    manager_id { 1 }
    source_url { "https://github.com/peteralcock/fairpair" }
    is_complete { false }
    start_date { "2023-07-08 20:51:23" }
    end_date { "2023-07-15 20:51:23" }
    priority { 1 }
  end
end
