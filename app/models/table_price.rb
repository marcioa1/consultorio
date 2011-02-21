class TablePrice < ActiveRecord::Base
  has_many :table_price_items
  
  scope :from_owner, lambda { |o|  where('Owner_id = ?', o) }
  scope :by_name, :order => 'name asc'
  validates_presence_of :name
  validates_presence_of :owner_id
end
