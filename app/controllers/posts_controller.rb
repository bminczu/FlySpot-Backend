class PostsController < ApplicationController

    def index 
        posts = Post.all
        # postsWithPics = []
        # byebug
        # posts.forEach do |post|
        #     image = rails_blob_path(post.image)
        #     postsWithPics.push({post: post, image: image})
            
        # end

        
        # render json: postsWithPics
        render json: posts
    end

    def show
        post = Post.find_by(params[:id])
        image = rails_blob_path(post.image)
        render json: {post: post, image: image}
    end

    def create
        # byebug
        post = Post.new(post_params)
        if post.save
            render json: post, include: [:image]
        else
            render json: {error: "Something went wrong."}
        end
    end

    def update
        post = Post.find_by_id(params[:id])
    
        if post.update(image: params[:image])
            image_url = rails_blob_path(post.image)
            # byebug
            render json: {post: post, image_url: image_url}

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
        params.require(:post).permit({:image=>[]}, :title, :user_id, :address, :latitude, :longitude, :category, :airspace, :description, :authors_rating, :video)
    end
end
