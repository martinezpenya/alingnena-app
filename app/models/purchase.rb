class Purchase < ActiveRecord::Base
  attr_accessible :delivered_at, :description
  has_one :invoice
end
