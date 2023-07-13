class AddApprovalsToPtoRequest < ActiveRecord::Migration[7.0]
  def change
    add_column :pto_requests, :is_approved, :boolean
    add_column :pto_requests, :approved_by, :integer
  end
end
