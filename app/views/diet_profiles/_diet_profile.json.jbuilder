json.extract! diet_profile, :id, :user_id, :developer_id, :restrictions, :favorites, :allergies, :likes, :dislikes, :created_at, :updated_at
json.url diet_profile_url(diet_profile, format: :json)
