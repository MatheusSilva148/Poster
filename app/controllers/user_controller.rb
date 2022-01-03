class UserController < ApplicationController

    def show
        @posts = Post.where(user: current_user).order("created_at DESC")
        @post = Post.new
    end
    
end
