class CoursesController < ApplicationController
	def create
	    @trip = Trip.find(params[:trip_id])
	    @course = @trip.courses.create(course_params)
	    redirect_to trip_path(@trip)
	end
	 
	def destroy
	    @trip = Trip.find(params[:trip_id])
	    @course = @trip.courses.find(params[:id])
	    @course.destroy
	    redirect_to trip_path(@trip)
	end

	private
	    def course_params
	    	params.require(:course).permit(:order, :comment)
	    end
end
