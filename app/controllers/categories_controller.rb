class CategoriesController < ApplicationController
  def index
  end

  def show
    @posts = Post.where(category_id: params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    Category.create(category_params)

    flash[:notice] = "Uspješno ste kreirali novu kategoriju"

    redirect_to root_path
  end

  def update
  end

  def destroy
  end

  def edit
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end


end
