class HomeController < ApplicationController
  def index

    @user = User.all
    @posts = Post.all.page(params[:page]).per(3)

  end
  def contact

    @contact = ContactForm.new
  end

end
