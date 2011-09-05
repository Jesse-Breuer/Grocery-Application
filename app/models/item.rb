class Item < ActiveRecord::Base
  belongs_to :section
  accepts_nested_attributes_for :section, :allow_destroy => true  
end
