class ProductFlavor < ApplicationRecord
  belongs_to :product
  belongs_to :flavor
  validates_uniqueness_of :flavor_id, scope: :product
end
