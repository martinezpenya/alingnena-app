class Product < ActiveRecord::Base
  attr_accessible :cost, :description, :name, :stock
  validates_presence_of(:name, :description)
  #també val d'esta manera:
  #validates_presence_of :name, :description
  #has_and_belongs_to_many :purchases
  has_many :line_items
  
  before_validation :assign_default_description
  
  private
  
    def assign_default_description
        if description.blank?
          self.description = name
        end
    end
end
