class Product < ApplicationRecord
  belongs_to :category
  has_many :product_flavors, dependent: :destroy
  has_many :flavors, dependent: :destroy, through: :product_flavors
  has_many :product_sizes, dependent: :destroy
  has_many :sizes, dependent: :destroy, through: :product_flavors
  validates_uniqueness_of :name
end
