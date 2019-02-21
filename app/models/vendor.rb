class Vendor < ApplicationRecord
  has_many :prices
  has_many :products, :through => :prices
end
