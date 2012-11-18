class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.new(params[:comment])
        if @comment.save
            flash[:success] = "Comment created!"
            redirect_to root_url
        else
            flash[:error] = "Comment failed!"
            redirect_to root_url
        end
    end
end