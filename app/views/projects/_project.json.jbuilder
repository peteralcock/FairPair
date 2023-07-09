json.extract! project, :id, :lead_developer_id, :name, :description, :status, :user_id, :manager_id, :source_url, :is_complete, :start_date, :end_date, :priority, :created_at, :updated_at
json.url project_url(project, format: :json)
