class AddProductToPrice < ActiveRecord::Migration[5.2]
  def change
    add_reference :prices, :Product, foreign_key: true
  end
end
