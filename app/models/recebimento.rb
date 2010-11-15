class Recebimento < ActiveRecord::Base
  belongs_to :paciente
  belongs_to :forma_recebimento
  has_one    :cheque
end
