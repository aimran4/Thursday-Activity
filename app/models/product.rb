class Product < ApplicationRecord
  has_many :prices
  has_many :vendors, through :prices
end
