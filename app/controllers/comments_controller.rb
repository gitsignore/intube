class CommentsController < ApplicationController
  before_filter :authorize

  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.create(comment_params)
    flash[:success] = "Comment added successfully."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.find(params[:id])
    @comment.destroy
    redirect_to movie_path(@movie)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
