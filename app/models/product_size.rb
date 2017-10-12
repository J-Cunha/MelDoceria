class ProductSize < ApplicationRecord
  belongs_to :product
  validates_presence_of :name, :value
  validates_uniqueness_of :name, scope: :product
  def value_f
    "R$ #{(('%.2f' % self.value).sub'.',',')}"
    #R$ #{'%.2f' %(self.value).to_s}"
  end

end
