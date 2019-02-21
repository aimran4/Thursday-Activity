class AddProductToVendors < ActiveRecord::Migration[5.2]
  def change
    add_reference :vendors, :Product, foreign_key: true
  end
end
