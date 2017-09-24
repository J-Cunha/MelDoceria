class CreateProductSizeCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :product_size_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
