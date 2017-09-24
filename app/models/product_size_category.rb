class ProductSizeCategory < ApplicationRecord
  has_many :product_sizes
  has_many :products, through: :product_sizes
  validates_uniqueness_of :name
  validates_presence_of :name
end
