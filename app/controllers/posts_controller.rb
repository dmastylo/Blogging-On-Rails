class PostsController < ApplicationController

  def index
    @post = Post.published
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

end
