class ApiController < ActionController::Base
	
	def render_400(err)
		@trips = err.full_messages
		render "api/400", status: 400
	end
	
	def render_404(message='')
	    @message = message
	    render "api/404", status: 404
	end
end
