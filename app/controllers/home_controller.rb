class HomeController < ApplicationController
  def view
  	@categories=Category.all
  end
end
