class HomeController < ApplicationController
    def index
        if params[:tag]
            @posts = Post.tagged_with(params[:tag])            
        else
            @posts = Post.published
        end
    end
end
