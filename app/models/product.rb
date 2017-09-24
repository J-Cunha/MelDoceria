class Product < ApplicationRecord
  belongs_to :category
  has_many :product_flavors, dependent: :destroy
  has_many :flavors, dependent: :destroy, through: :product_flavors

  has_many :product_product_sizes, dependent: :destroy
  has_many :product_sizes, dependent: :destroy, through: :product_product_sizes

  validates_uniqueness_of :name
  validates_presence_of :name
  mount_uploader :product_image, ProductImageUploader
end
