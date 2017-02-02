class Lead < ApplicationRecord

  has_many :call_logs
  has_many :appointments
end
