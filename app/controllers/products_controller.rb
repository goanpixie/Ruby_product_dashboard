class ProductsController < ApplicationController

 	def index
 		@products = Product.all
 		
 	end 

 	def new
 		
 	end

 	def create
 		Product.create(name: params[:name], description: params[:description], pricing: params[:pricing])
       redirect_to '/products'
    end

    def show
    	@products = Product.find(params[:id])
    	
    end

    def edit
    	@products = Product.find(params[:id])
    end

    def update
    	product = Product.find(params[:id])
        product.name = params[:name]
        product.description = params[:description]
        product.pricing = params[:pricing]

        product.save
        redirect_to '/products'
    end

    def destroy
    	product = Product.find(params[:id])
    	product.destroy
    	redirect_to "/products"
    end

end