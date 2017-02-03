class AddAColumnToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :time, :datetime
  end
end
