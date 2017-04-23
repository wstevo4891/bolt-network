class GenresController < ApplicationController
	before_action :set_genre, only: [:show, :edit, :update, :destroy]
  respond_to :html
  respond_to :js

  def new
    @genre = Genre.new
  end

	def index
		@genres = Genre.all
    @genre = Genre.new
	end

  # GET /genres/1
  # GET /genres/1.json
  def show
    @genres = Genre.all
    # @movie_ids = @genre.movie_ids
  end

	def edit
	end

  def create
    @genre = Genre.new(genre_params)
    
    respond_to do |format|
      if @genre.save
        format.html { render @genre, to_partial_path: "genres/_genre.html.erb" }
        format.json { render :index, status: :created, location: @genre}
        format.js
      else
        format.html { render :index }
        format.json { render json: @genre.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @genre.update(genre_params)
        format.html { render :index }
        format.json { render :index, status: :ok }
        format.js
      else
        format.html { render :index }
        format.json { render json: @genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @genre.destroy
    respond_to do |format|
      format.html { render :index, notice: 'Genre was deleted' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genre
      @genre = Genre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genre_params
      params.require(:genre).permit(:name)
    end
end
