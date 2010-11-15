class TrabalhoProtetico < ActiveRecord::Base
  belongs_to :protetico
  belongs_to :tratamento
  belongs_to :item_protetico
  
  validates_presence_of :date, :descricao, :valor
  validates_numericality_of :valor
end
