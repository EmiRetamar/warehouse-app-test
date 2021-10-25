class CashRegister < ApplicationRecord
  # model association
  has_many :sales

  # validations
  validates_presence_of :date, :total_cash

end
