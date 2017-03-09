class Lead < ApplicationRecord

  has_many :call_logs
  has_many :appointments
  belongs_to :user
end
