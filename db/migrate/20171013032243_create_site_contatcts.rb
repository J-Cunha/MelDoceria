class CreateSiteContatcts < ActiveRecord::Migration[5.1]
  def change
    create_table :site_contatcts do |t|
      t.string :name
      t.string :email
      t.text :message
      t.boolean :answered

      t.timestamps
    end
  end
end
