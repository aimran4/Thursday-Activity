class AddVendorToPrice < ActiveRecord::Migration[5.2]
  def change
    add_reference :prices, :Vendor, foreign_key: true
  end
end
