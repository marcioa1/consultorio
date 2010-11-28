class Check < ActiveRecord::Base
  belongs_to :receipt
  belongs_to :bank
end
