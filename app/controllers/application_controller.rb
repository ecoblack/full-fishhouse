class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	def index
   		 @category = Category.find(params[:id])
  	

		  @products = Product.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
		end



end