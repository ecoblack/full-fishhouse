class StaticPagesController < ApplicationController
  def home
  	@categories = Category.all
  	@products = Product.all
  end

  def contact
  end

  def about
  end


 
end
