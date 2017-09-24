class CreateProductSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_sizes do |t|
      t.belongs_to :product, foreign_key: true
      t.belongs_to :product_size_category, foreign_key: true
      t.string :name
      t.string :weight
      t.string :width
      t.string :height
      t.string :depth

      t.timestamps
    end
  end
end
