class Review < ActiveRecord::Base
  belongs_to :author, class_name: 'User'
  belongs_to :shop

  accepts_nested_attributes_for :shop
end
