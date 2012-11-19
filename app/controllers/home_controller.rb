class HomeController < ApplicationController
    def index
        if params[:tag]
            @posts = Post.tagged_with(params[:tag])            
        else
            @posts = Post.all
        end
        
        @posts.delete_if { |post| post.status != "Published" }
    end
end
