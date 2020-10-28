class FilmsController < ApplicationController

  def index
    
  end
 
  def show
  	@film = Film.find_by id: params[:id]
    @comment = current_user.comments.build
    @comments = @film.comments
  	if @film.nil?
  	   flash[:danger] = " Film is not exist !"
  	   redirect_to films_index_path
  	end
  end

 
  
end
