class Api::TripsController < Api::ApiController
	
	def index
		@trips = Trip.all
	end

	def show
		@trip = Trip.find_by(id: params[:id])

		render_404 "Can't find the trip with ID" if @trip.nil?
	end

	def create
		
		@trip = Trip.new()
		@trip.assign_attributes(title: params[:title], address: params[:address])
		if @trip.valid?
			@trip.save
			render :show
		else
			render_404 @trip.errors
		end
	end

	def destroy
		@trip.destroy
		render :show
	end

	def trip_params
		params.permit :title, :address
	end
end
