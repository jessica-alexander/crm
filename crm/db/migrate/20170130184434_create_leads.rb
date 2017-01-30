class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :notes

      t.timestamps
    end
  end
end
