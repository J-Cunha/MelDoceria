class AddWeightToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :p_size, :string
    add_column :products, :weight, :string
    add_column :products, :height, :string
    add_column :products, :width, :string
    add_column :products, :depth, :string
  end
end
