class Debit < ActiveRecord::Base
  belongs_to :patient
  belongs_to :treatment
  belongs_to :budget
end
