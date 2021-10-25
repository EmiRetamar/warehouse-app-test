class Sale < ApplicationRecord
  # model association
  has_many :products, through: :sales_detail
  belongs_to :cash_register

  # validations
  validates_presence_of :date, :iva, :gross_total, :discount, :total, :registered, :cash_register_id

end
