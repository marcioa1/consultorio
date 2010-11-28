class ProstheticWork < ActiveRecord::Base
  belongs_to :prosthetic
  belongs_to :treatment
  belongs_to :item_prosthetic
  
  validates_presence_of :date, :description, :price
  validates_numericality_of :price
end
