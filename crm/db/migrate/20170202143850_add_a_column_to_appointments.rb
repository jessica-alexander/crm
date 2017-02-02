class AddAColumnToAppointments < ActiveRecord::Migration[5.0]
  def change
      add_column :appointments, :lead_id, :integer
  end
end
