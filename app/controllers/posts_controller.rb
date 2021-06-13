class PostsController < ApplicationController
    
    def index
     @post = Post.new
     @posts = Post.all
    end
    
    def create
     @post = Post.new(post_params)
     @post.customer_id = current_customer.id
     @post.save
     redirect_to posts_path
     
    end
    
    def show
     @post = Post.find(params[:id])
    end
    
    def edit
     @post = Post.find(params[:id])
    end
    
    def update
     @post = Post.find(params[:id])
     if @post.update(post_params)
      redirect_to post_path(@post), notice: "You have updated book successfully."
     else
      render "edit"
     end
    end
    
    def destroy
     @post= Post.find(params[:id])
     @post.destroy
     redirect_to posts_path
    end
    
    private

    def post_params
        params.require(:post).permit(:title, :comment)
    end
end
