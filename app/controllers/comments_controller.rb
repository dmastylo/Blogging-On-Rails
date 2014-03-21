class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)

    if @comment.save
      flash[:success] = "Comment created!"
    else
      flash[:error] = "Comment failed!"
    end

    redirect_to @post
  end

private

  def comment_params
    params.require(:comment).permit(:author, :content, :email)
  end

end