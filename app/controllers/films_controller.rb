class FilmsController < ApplicationController
  before_action :correct_user, only: :destroy
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
  private

  def film_params
	  params.require(:film).permit(:name, :video, :content, :image)
  end

  def correct_user
    @micropost = current_user.microposts.find_by(id: params[:id])
    redirect_to root_url if @film.nil?
  
end
