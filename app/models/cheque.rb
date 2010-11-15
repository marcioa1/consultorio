class Cheque < ActiveRecord::Base
  belongs_to :recebimento
  belongs_to :banco
end
