class ChangeDatatypeToString < ActiveRecord::Migration[5.0]
  def self.up
    change_column :leads, :phone_number, :string
  end

  def self.down
    change_column :leads, :phone_number, :integer
  end
end
