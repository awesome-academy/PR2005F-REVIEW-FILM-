class ReviewsController < ApplicationController


  def index
    @reviews = Review.all
  end  
  def new
    @film = Film.find_by id: params[:film_id]
    if @film.nil?
      flash[:danger] = "Film is not exist !"
      redirect_to root_path
    end 
    @review = @film.reviews.build
  end  
  def create
    @review = current_user.reviews.build(review_params)
    if @review.save
      flash[:success] = "Review Created!"
      redirect_to @review
    else
      render :new
    end
  end
  def show
    @review = Review.find_by id: params[:id]
    @film = Film.find_by id: params[:film_id]
    if @review.nil?
      flash[:danger] = "Review is not exist !"
      redirect_to reviews_index_path
    end
  end 

  def edit
    @review = Review.find_by id: params[:id]
    @film = @review.film
  end

  def update
     @review = Review.find_by id: params[:id]
    @film = @review.film
    if @review.update(review_params)
      flash[:success] = "Updated"
      redirect_to @review
    else
      render :edit
    end
  end
  
  def destroy
    @review = Review.find_by id: params[:id]
    @film = @review.film
    @review.destroy
    flash[:danger] = "review deleted"
    redirect_to reviews_index_path
  end

  private
  def review_params
    params.require(:review).permit(:content, :image, :title, :film_id)
  end

  def correct_user
    @review = current_user.reviews.find_by(id: params[:id])
    redirect_to root_url if @review.nil?
  end

end
