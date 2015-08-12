class HomeController < ApplicationController
  def index
  	@categories=Category.all
  end
  def view
  end
  def products_view
  	@categories=Category.all
    
  	respond_to do |format|
  		format.html
  		format.js
  	end
  end

end
