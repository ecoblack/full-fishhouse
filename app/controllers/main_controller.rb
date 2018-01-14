class MainController < ApplicationController
	before_action :force_json, only: :search 

	def search
		@categories = Category.ransack(name_cont: params[:a]).result(distinct: true).limit(5)
		@products = Product.ransack(name_cont: params[:a]).result(distinct: true).limit(5)
	end


	

#code 

private 

    def force_json 
        request.format = :json 
    end 
end
