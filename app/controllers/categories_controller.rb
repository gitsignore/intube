class CategoriesController < ApplicationController
  before_filter :authorize

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:success] = "Category added successfully."
      redirect_to @category
    else
      flash[:warning] = "Form is invalid."
      render 'new'
    end
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      flash[:success] = "Category updated successfully."
      redirect_to @category
    else
      flash[:warning] = "Form is invalid."
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to categories_path
  end

  private
  def category_params
    params.require(:category).permit(:title)
  end
end
