class PostsController < ApplicationController
  http_basic_authenticate_with name: "Stephen", password:"4321", except:[:index, :show]

  def index
    #List the posts on the index page from our post model.
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
      @post = Post.new
  end

  def create
      #Creates the new post
      @post = Post.new(post_params)
      #Saves the post then redirects it to post.
      if(@post.save)
        redirect_to @post
      else
        render 'new'
      end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if(@post.update(post_params))
      redirect_to @post
    else
      render 'edit'
    end
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end
  #Sets the post method to permit a title and body to be submitted.
  private def post_params
      params.require(:post).permit(:title, :body)
  end
end
