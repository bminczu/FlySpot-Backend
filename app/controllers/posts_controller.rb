class PostsController < ApplicationController

    def index 
        posts = Post.all
        render json: posts, except: [:created_at, :updated_at]
    end

    def show
        post = Post.find_by(params[:id])
        render json: post
    end

    def create
        post = Post.new(post_params)
        if post.save
            render json: post, except: [:created_at, :updated_at]
        else
            render json: {error: "Something went wrong."}
        end
    end

    def update
        post = Post.find_by_id(params[:id])
    
        if post.update(post_params)
            render json: post
        else
            render json: {error: "Something went wrong."}
        end
    end

    def destroy
        post = Post.find_by(params[:id])
        if post.destroy
            render json: post
        else
            render json: {error: "Something went wrong."}
        end
    end

    private 

    def post_params
        params.require(:post).permit(:title, :user_id, :address, :latitude, :longitude, :category, :airspace, :description, :authors_rating, :video)
    end
end
