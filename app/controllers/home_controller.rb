class HomeController < ApplicationController
    def index
        @posts = Post.all
        @posts.delete_if { |post| post.status != "Published" }
    end
end
