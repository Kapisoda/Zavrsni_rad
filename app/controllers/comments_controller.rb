class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create

    Comment.create(comment_params)

    flash[:notice] = "Uspješno ste komentirali"

    redirect_to :back
  end

  def edit
  end

  def update
  end

  def destroy
    @comment = Comment.find(params[:format])
    @comment.destroy

    flash[:notice] = "Uspješno ste izbrisali komentar"
    redirect_to :back

  end
  private
  def comment_params
    params.require(:comment).permit( :body, :user_id, :post_id)
  end
end
