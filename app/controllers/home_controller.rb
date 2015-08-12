class HomeController < ApplicationController
<<<<<<< HEAD
#<<<<<<< HEAD
  def view
  	@categories=Category.all

end
  def index
#>>>>>>> 4d2f2337bd60a51f6c6a9aea8544766e9c606105
=======
  def index
  	@categories=Category.all
>>>>>>> b9293fa3481bfcb00715648a6bf4a1d62f730314
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
