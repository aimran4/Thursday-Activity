class Price < ApplicationRecord
  belongs_to :products
  belongs_to :vendors
end
