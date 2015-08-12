class HomeController < ApplicationController

  def view
  	@categories=Category.all
  end
  def index
  	@categories=Category.all
  end
end
