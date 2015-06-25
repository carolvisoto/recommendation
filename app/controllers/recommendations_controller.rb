class RecommendationsController < ApplicationController

	def index
	end
	
	# def suggestion
        
 #        @param_user = params[:name].downcase

 #        if @param_user.to_s.strip.to_s != ''
	# 	     @users_like_too = {}
	# 	     find_user(@param_user) 
	# 	else
	# 	    redirect_to root_path
	#     end
	# end

 #    def find_user(param_user)
 #        user = User.find_by_name(param_user)
 #        if user.nil?
 #        	redirect_to root_path
 #        else
 #        	search_products(param_user)	
 #        end	
 #    end	

	# def search_products(param_user)
	# 	@products = User.find_by_name(param_user).products
	# 	    @products.each do |product|
	# 	        @users_like_too[product.product]  = product.users
	# 	     end 
	# 	     puts @users_like_too
	# 	 render :suggestion
 #    end	


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
