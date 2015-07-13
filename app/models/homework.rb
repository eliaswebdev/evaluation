class Homework < ActiveRecord::Base
  belongs_to :student
  has_many :evaluations
  accepts_nested_attributes_for :evaluations, :allow_destroy => true 
end
