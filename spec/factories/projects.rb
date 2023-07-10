FactoryBot.define do
  factory :project do
    name { FFaker::HipsterIpsum.word }
    number_of_sprints { rand(1..10) }
    developers { create_list(:developer, 2) }
    lead_developer_id { Developer.all.sample }
    description { FFaker::HipsterIpsum.paragraph}
    status { ["Pending", "Active", "Completed", "Abandoned", "Canceled", "Inactive"].sample }
    user_id { 1 }
    manager_id { 1 }
    source_url { "https://github.com/peteralcock/fairpair" }
    start_date { "2023-07-08 20:51:23" }
    end_date { "2023-07-15 20:51:23" }
    priority { 1 }
  end

end
