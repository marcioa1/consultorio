class PriceTable < ActiveRecord::Base
  has_many :table_items
end
