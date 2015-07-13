class Evaluation < ActiveRecord::Base
	belongs_to :homework
	belongs_to :student

	validates :score, :student_id, :homework_id, presence: true
	validates_uniqueness_of :student_id, scope: :homework_id

	SCORES = [
		['Rubbish', 1], 
		['Regular', 2], 
		['Good', 3], 
		['Great', 4], 
		['Very cool', 5]
	]	
end




