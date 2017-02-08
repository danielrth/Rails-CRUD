class Trip < ApplicationRecord
	has_many :courses, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 }
end