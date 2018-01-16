class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	
	def index
   		@category = Category.find(params[:id])
  		
	end

	

end