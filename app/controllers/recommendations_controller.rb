class RecommendationsController < ApplicationController

	def index
	end

	def suggestion
		@name = sanitize(params[:name])
		if @name.blank?
		   redirect_to root_path
		else
           find_user(@name) 
		end
	end
	 
	private

	def find_user(name)
        user = User.find_by_name(name)
        if user.nil?
        	redirect_to root_path
        else
	        @products = user.products
			@likes = likes_from(@products)
			render :suggestion
        end	
    end
	 
	def sanitize(name)
	    name.downcase.strip
	end
	 
	def likes_from(products)
	    likes = {} 
		products.each do |product| 
		  likes[product.product] = product.users 
		end 
		likes
	end
end
