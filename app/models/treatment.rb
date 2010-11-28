class Treatment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :table_item
  has_many   :prosthetic_works
  belongs_to :budget
  
  validates_presence_of :price, :description
end
