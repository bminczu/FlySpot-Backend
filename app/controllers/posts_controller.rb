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
        if Post.save
            render json: post, except: [:created_at, :updated_at]
        else
            render json: {error: "Something went wrong."}
        end
    end

    def update
        post = Post.find(params[:id])
    
        if Post.update(post_params)
            render json: post
        else
            render json: {error: "Something went wrong."}
        end
    end

    def destroy
        post = Post.find(params[:id])
        if Post.destroy
            render json: post
        else
            render json: {error: "Something went wrong."}
        end
    end

    private 

    def post_params
        params.require(:post).permit(:user_id, :address, :latitude, :longitude, :category, :airspace, :description, :authors_rating, :video)
    end
end
