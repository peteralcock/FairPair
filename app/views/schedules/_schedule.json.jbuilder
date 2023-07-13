json.extract! schedule, :id, :json_schedule, :raw_text_schedule, :project_id, :sprint_id, :user_id, :manager_id, :is_approved, :approved_at, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
