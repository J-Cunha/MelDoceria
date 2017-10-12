class AddFullDescriptionToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :full_description, :text
  end
end
