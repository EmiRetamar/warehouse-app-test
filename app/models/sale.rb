class Sale < ApplicationRecord
  # model association
  has_and_belongs_to_many :products
  belongs_to :cash_register

  # validations
  validates_presence_of :date, :iva, :gross_total, :discount, :total, :registered, :cash_register_id

end
