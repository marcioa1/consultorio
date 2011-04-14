class Patient < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :registerable and :timeoutable
  # devise  :database_authenticatable, :recoverable, :rememberable,
  #         :trackable, :validatable, :confirmable

  # include User::Common

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me


  belongs_to :table_price
  has_many   :treatments
  has_many   :debits
  has_many   :receipts
  
  validates_presence_of :name, :table_price
  
end