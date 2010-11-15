class Debito < ActiveRecord::Base
  belongs_to :paciente
  belongs_to :tratamento
  belongs_to :orcamento
end
