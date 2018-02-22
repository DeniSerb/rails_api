class Task < ApplicationRecord

	belongs_to :user

  validates :title, presence: true,
	  length: {
	  	minimum: 5,
	  	maximum: 30
	  }

	validates :description, presence:true

  validates :priority, presence: true

end
