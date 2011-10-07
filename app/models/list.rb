class List < ActiveRecord::Base
  has_many :sections, :dependent => :destroy
  accepts_nested_attributes_for :sections
  belongs_to :user
end
