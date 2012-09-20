class Debt < ActiveRecord::Base
  attr_accessible :amount, :item, :name, :remarks
end
