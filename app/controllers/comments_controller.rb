class CommentsController < ApplicationController
    def create
        @comment = Comment.new(params[:comment])
        if @comment.save
            flash[:success] = "Comment created!"
            redirect_to root_url
        else
            flash[:error] = "Comment failed!"
            redirect_to root_url
        end
    end

    def edit

    end
end