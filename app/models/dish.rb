class Dish < ActiveRecord::Base
  validates :name,  :presence => true
  
  has_attached_file :picture
  
  belongs_to :company
end
