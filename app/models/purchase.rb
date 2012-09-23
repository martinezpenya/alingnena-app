class Purchase < ActiveRecord::Base
  attr_accessible :delivered_at, :description, :supplier_id
  has_one :invoice
  belongs_to :supplier
  #has_and_belongs_to_many :purchases
  has_many :line_items
  has_many :products, :through => :line_items, :uniq => true
  
  def display_supplier
      return supplier.name unless supplier.nil?
  end
end
