class  Admin::FilmsController < Admin::ApplicationController
	def new
		@film = Film.new
	end

	def index
		@films = Film.all
	end

	def edit
		@film = Film.find_by id: params[:id]
	end

	def	create
		@film = Film.new(film_params)
		if @film.save!
			flash[:success] = "Film Created"	
			redirect_to @film
		else
			flash[:danger] = "Fail"	
			render :new
		end	
	end	
	private
	def film_params
		params.require(:film).permit(:name, :content, :image, :video)
	end	
end	
