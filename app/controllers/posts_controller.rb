class PostsController < ApplicationController

  before_action :authenticate_user!
  def index
  end

  def show
    @user = current_user
    @post = Post.find(params[:format])

    @user = User.find(current_user.id)

    @comment = Comment.new
    @comments = Comment.where(post_id: @post.id)


  end

  def new

    @user = current_user
    @post = Post.new
    @category = Category.all
  end

  def create

    Post.create(post_params)
    flash[:notice] = "Uspješno ste kreirali novi post"

    redirect_to root_path

  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    flash[:notice] = "Uspješno ste izmjenili post"
    redirect_to root_path

  end

  def destroy
    @post = Post.find(params[:format])
    @post.destroy

    flash[:notice] = "Uspješno ste izbrisali post"
    redirect_to root_path

  end

  def edit

    @post = Post.find(params[:id])

  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :user_id, :image, {category_ids:[]})
  end
end
