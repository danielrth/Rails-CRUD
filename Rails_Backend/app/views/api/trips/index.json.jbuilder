json.message true
json.trips @trips do |trip|
	json.(trip, :title, :address)
end