class MoviesController < ApplicationController
  before_filter :authorize

  helper MoviesHelper

  def index
    if params[:search]
      @movies = Movie.search(params[:search])
    else
      @movies = Movie.all
    end
    @categories = Category.order("title").all
  end

  def show
    @movie = Movie.find(params[:id])
    @categories = Category.order("title").all
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      flash[:success] = "Video added successfully."
      redirect_to @movie
    else
      flash[:warning] = "Form is invalid."
      render 'new'
    end
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      flash[:success] = "Video updated successfully."
      redirect_to @movie
    else
      flash[:warning] = "Form is invalid."
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to movies_path
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :text, :url, :category_id)
  end
end
