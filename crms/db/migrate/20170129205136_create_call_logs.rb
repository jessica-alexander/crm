class CreateCallLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :call_logs do |t|
      t.datetime :date
      t.text :notes

      t.timestamps
    end
  end
end
