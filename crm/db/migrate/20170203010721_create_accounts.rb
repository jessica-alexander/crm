class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :notes

      t.timestamps
    end
  end
end
