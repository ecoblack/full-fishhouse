class RenameProductsColumn < ActiveRecord::Migration[5.0]
  def change
  	rename_column :products, :desc, :body
  	add_column :products, :shops, :string
  end
end
