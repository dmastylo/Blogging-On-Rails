class PostsController < ApplicationController
    def show
        @post = Post.find(params[:id])
        @comments = @post.comments
        @comment = @post.comments.build
    end
end
