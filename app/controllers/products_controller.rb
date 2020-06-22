class ProductsController < ApplicationController
   def index
   	@products = Product.all
   end

# Routed from POST /items/:id/add_to_cart
   def add

     @product = Product.find(params[:id])
  	 cart<< @product.id
   
    cart << params[:product]
  
   	render :index
	end

end