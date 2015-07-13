class Student < ActiveRecord::Base
	has_many :homeworks
	has_many :evaluations, :through => :homeworks
	accepts_nested_attributes_for :homeworks, :allow_destroy => true 
end
