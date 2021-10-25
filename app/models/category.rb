class Category < ApplicationRecord
  # model association
  has_many :products

  # validations
  validates_presence_of :name, :description

end
