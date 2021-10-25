class Product < ApplicationRecord
  # model association
  has_many :sales, through: :sales_detail
  belongs_to :category

  # validations
  validates_presence_of :code, :name, :sale_price, :stock, :stock_min, :description, :category_id

end
