class AddPriceToVendors < ActiveRecord::Migration[5.2]
  def change
    add_reference :vendors, :Price, foreign_key: true
  end
end
