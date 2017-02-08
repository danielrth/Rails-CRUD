class Trip < ApplicationRecord
	validates_presence_of :title, :address
end
