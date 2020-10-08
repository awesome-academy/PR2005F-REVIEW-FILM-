class FilmsController < ApplicationController
  def index
  end

  def show
  end

  private

  def film_params
	  params.require(:film).permit(:name,:video)
  end
  
end
