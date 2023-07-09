json.extract! pto_request, :id, :start_date, :end_date, :developer_id, :status, :approved_at, :manager_id, :note, :created_at, :updated_at
json.url pto_request_url(pto_request, format: :json)
