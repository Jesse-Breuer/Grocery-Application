class Section < ActiveRecord::Base
  has_many :items, :dependent => :destroy 
  accepts_nested_attributes_for :items, :reject_if => lambda { |a| a[:item_name].blank? }, :allow_destroy => true 
end
