class RecommendationsController < ApplicationController

	def index
	end

  # def show
	def suggestion
		@name = sanitize(params[:name])
		if @name.blank?
       # TODO better way of handling error, eg. do validation of form in javascript
       # controller could return an error status - how to do that in rails?
       # render :index again, rather than redirecting root
		   redirect_to root_path
		else
      find_user(name)
 		end
	end

	private

  def find_user(name)
    user = User.find_by_name(name)
    if !user
      # see above
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
