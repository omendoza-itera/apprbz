class Company < ActiveRecord::Base
	 has_many :dishes
	 validates_associated :dishes
	 accepts_nested_attributes_for :dishes
end
