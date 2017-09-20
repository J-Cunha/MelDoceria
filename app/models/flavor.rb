class Flavor < ApplicationRecord
  has_many :product_flavors
  has_many :products, through: :product_flavors
  validates_uniqueness_of :name


end
