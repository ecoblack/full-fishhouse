class MainController < ApplicationController
	before_action :force_json, only: :autocomplete


	def autocomplete
		@products = Product.ransack(name_cont: params[:q]).result(distinct: true)
		@categories = Category.ransack(name_cont: params[:q]).result(distinct: true)
	end

	def search
		@products = Product.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
		@categories = Category.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
	end


	private

	def force_json
		request.format = :json
	end
end
