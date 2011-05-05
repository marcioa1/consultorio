class Budget < ActiveRecord::Base
  belongs_to :patient
  has_many   :treatments
  
  validates_presence_of :date, :price, :number_of_parcels
  validates_numericality_of :number_of_parcels, :price
  
end
