class PagesController < ApplicationController
	
  def index
  	@films = Film.all
  end

  def contact
  end
end
