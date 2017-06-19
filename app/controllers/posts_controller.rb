class PostsController < ApplicationController
  def index

  end

  def new

  end

  def create
      #Creates the new post
      @post = Post.new(post_params)
      #Saves the post then redirects it to post.
      @post.save
      redirect_to @post
  end

  private def post_params
      params.require(:post).permit(:title, :body)
  end
end
