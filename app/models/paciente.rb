class Paciente < ActiveRecord::Base
  belongs_to :tabela
  has_many   :tratamentos
  has_many   :debitos
  has_many   :recebimentos
end
