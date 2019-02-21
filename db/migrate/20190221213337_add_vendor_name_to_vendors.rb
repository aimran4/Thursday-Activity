class AddVendorNameToVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :vendors, :vendor_name, :string
  end
end
