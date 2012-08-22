class Product < ActiveRecord::Base
  attr_accessible :cost, :description, :name, :stock
  validates_presence_of(:name, :description)
  
  #també val d'esta manera:
  #validates_presence_of :name, :description
end
