class AddAColumnToCallLog < ActiveRecord::Migration[5.0]

  def change
    add_column :call_logs, :lead_id, :integer
  end
end
