class Receipt < ActiveRecord::Base
  belongs_to :patient
  belongs_to :form_of_receipt
  has_one    :check
end
