class Task < ApplicationRecord

	belongs_to :user

  validates :title, presence: true,
	  length: {
	  	minimum: 1,
	  	maximum: 30
	  }

	validates :description, presence:true

  validates :priority, presence: true, numericality: { minimum: 1, maximum: 3,  only_integer: true }

end
