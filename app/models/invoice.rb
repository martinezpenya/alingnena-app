class Invoice < ActiveRecord::Base
  belongs_to :purchase
  attr_accessible :reference_number
end
