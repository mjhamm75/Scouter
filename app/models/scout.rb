class Scout < ActiveRecord::Base
  attr_accessible :birthday, :name
  has_one :advancement, :dependent => :destroy
  accepts_nested_attributes_for :advancement
  attr_accessible :advancement_attributes
end
