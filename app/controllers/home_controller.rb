class HomeController < ApplicationController

  def view
  	@categories=Category.all
  end


  def index
  	@categories=Category.all
  end
  def view
  	@categories=Category.all
  end
  def products_view
  	@categories=Category.all
    
  	respond_to do |format|
  		format.html
  		format.js
  	end
  end

end
