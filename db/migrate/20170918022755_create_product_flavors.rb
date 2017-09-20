class CreateProductFlavors < ActiveRecord::Migration[5.1]
  def change
    create_table :product_flavors do |t|
      t.belongs_to :product, foreign_key: true
      t.belongs_to :flavor, foreign_key: true

      t.timestamps
    end
  end
end
