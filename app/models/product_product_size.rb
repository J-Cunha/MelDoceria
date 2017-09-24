class ProductProductSize < ApplicationRecord
  belongs_to :product_size
  belongs_to :product
  validates_presence_of :value
  validates_uniqueness_of :product_size_id, scope: :product
end
