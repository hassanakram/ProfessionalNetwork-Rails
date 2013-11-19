class PostsController < ApplicationController
  

  def create
  	@post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "post created!"
      redirect_to root_url
    else
      render 'home/index'
    end
  end

  def destroy
  end

  def index
  end

private
  def post_params
    params.require(:post).permit(:content)
   end

end