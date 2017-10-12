class Product < ApplicationRecord
  belongs_to :category
  has_many :product_flavors, dependent: :destroy
  has_many :flavors, dependent: :destroy, through: :product_flavors

  has_many :product_sizes, dependent: :destroy
  accepts_nested_attributes_for :product_sizes, reject_if: :all_blank, allow_destroy: true
  validates_uniqueness_of :name
  mount_uploader :product_image, ProductImageUploader
  crop_uploaded :product_image
  validates_presence_of :name, :product_image, :product_sizes, :category, :description
  def min_value
    unless self.product_sizes.empty?
    "R$ #{(('%.2f' %  self.product_sizes.minimum(:value)).sub'.',',')}"
  end
  end
end
