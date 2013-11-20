class PostsController < ApplicationController
  

  def create
  	@post = current_user.posts.build(params[:post])
    if @post.save
      flash[:success] = "post created!"
      redirect_to root_url
    else
      render 'home/sorryy'
    end
  end

  def destroy
  end

  def index
  end


end