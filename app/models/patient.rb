class Patient < ActiveRecord::Base
  belongs_to :table_price
  has_many   :treatments
  has_many   :debits
  has_many   :receipts
end
