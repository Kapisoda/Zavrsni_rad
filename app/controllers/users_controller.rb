class UsersController < ApplicationController
  def index
    @posts = Post.where(user_id: current_user.id)

  end

  def show
    @posts= Post.where(user_id: params[:id])
    @user= User.find(params[:id])
  end

  def new

  end

  def create

  end

  def update
  end

  def destroy
  end

  def edit
  end
end
