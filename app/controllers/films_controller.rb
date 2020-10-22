class FilmsController < ApplicationController

  def index
    
  end

  def show
  	@film = Film.find_by id: params[:id]
  	if @film.nil?
  	   flash[:danger] = " Film is not exist !"
  	   redirect_to films_index_path
  	end
  end

  private

  def film_params
	  params.require(:film).permit(:name,:video)
  end
  
end
