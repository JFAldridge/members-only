class PostsController < ApplicationController
  before_action :logged_in_user,    only: [:new, :create]
  def index
    @posts = Post.paginate(page: params[:page], per_page: 10).includes(:user)
  end

  def new
    @post = Post.new.includes
  end

  def create
    @post = current_user.posts.create(post_params)
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :body)
    end

    def logged_in_user
      unless logged_in?
        redirect_to login_path
      end
    end
end
