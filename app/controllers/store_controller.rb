class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  	# flash[:erro] = " teste"
  end
end
