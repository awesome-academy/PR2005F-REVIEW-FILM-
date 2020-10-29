class PagesController < ApplicationController
	
  def index
  	@films = Film.take(6)
  	@reviews = Review.take(6)
  end

end
