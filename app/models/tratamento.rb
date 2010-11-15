class Tratamento < ActiveRecord::Base
  belongs_to :paciente
  belongs_to :item_tabela
  has_many   :trabalho_proteticos
  belongs_to :orcamento
  
  validates_presence_of :valor, :descricao
end
