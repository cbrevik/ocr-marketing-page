class HomeController < ApplicationController
	def index

	end

	def signup
		@visitor = Visitor.new(secure_params)
		if @visitor.valid?
			@visitor.subscribe
			flash[:notice] = "You have been signed up with #{@visitor.email}!"
			redirect_to root_path
		else
			flash[:error] = "You must enter a valid email address"
			redirect_to root_path
		end
	end

	private
	def secure_params
		params.require(:contactForm).permit(:email)
	end
end