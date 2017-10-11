class ProductSize < ApplicationRecord
  belongs_to :product
  validates_presence_of :name, :value
  validates_uniqueness_of :name, scope: :product
end
