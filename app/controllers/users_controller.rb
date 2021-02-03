class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find_by(params[:id])
        render json: user
    end

    def create
        user = User.new(user_params)
        if User.save
            render json: user, except: [:created_at, :updated_at]
        else
            render json: {error: "Something went wrong."}
        end
    end

    def update
        user = User.find(params[:id])
    
        if User.update(user_params)
            render json: user
        else
            render json: {error: "Something went wrong."}
        end
    end

    def destroy
        user = User.find(params[:id])
        if User.destroy
            render json: user
        else
            render json: {error: "Something went wrong."}
        end
    end

    private 

    def user_params
        params.require(:user).permit(:user_id, :address, :latitude, :longitude, :category, :airspace, :description, :authors_rating, :video)
    end
end
