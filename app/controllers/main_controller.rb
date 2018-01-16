class MainController < ApplicationController
	before_action :force_json, only: :search

	def search
		@products = Product.ransack(name_cont: params[:q]).result(distinct: true)
		@categories = Category.ransack(name_cont: params[:q]).result(distinct: true)
	end


	private

	def force_json
		request.format = :json
	end
end
