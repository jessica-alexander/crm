class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :phone_number
      t.text :notes

      t.timestamps
    end
  end
end
