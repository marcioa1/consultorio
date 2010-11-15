class Orcamento < ActiveRecord::Base
  belongs_to :paciente
  has_many   :tratamentos
  
  validates_presence_of :data, :valor, :numero_parcelas
  validates_numericality_of :numero_parcelas, :valor
  
end
