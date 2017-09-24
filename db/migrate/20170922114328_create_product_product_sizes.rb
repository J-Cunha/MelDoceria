class CreateProductProductSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_product_sizes do |t|
      t.belongs_to :product_size, foreign_key: true
      t.belongs_to :product, foreign_key: true
      t.float :value

      t.timestamps
    end
  end
end
