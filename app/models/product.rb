class Product < ApplicationRecord
  # model association
  has_and_belongs_to_many :sales
  belongs_to :categories

  # validations
  validates_presence_of :code, :name, :sale_price, :stock, :stock_min, :description, :category_id

end
