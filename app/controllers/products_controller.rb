class ProductsController < ApplicationController
   def index
   	#@products = Product.all
   end

# Routed from POST /items/:id/add_to_cart
   def add
	# Step One: Get the item from the path

  # Step Two: Then load the cart from the session using
  # our helper method in application controller

     #@product = Product.find(params[:id])
  	 #cart<< @product.id
   #or could do it all in one step, using params hash
    cart << params[:product]
    #Step 3: render the view from index
   	render :index
	end

end