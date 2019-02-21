class AddPricesToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :Price, foreign_key: true
  end
end
