class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find_by_id(params[:id])
        render json: user.to_json(include: [:posts])
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user, except: [:created_at, :updated_at]
        else
            render json: {error: "Something went wrong."}
        end
    end

    def update
        user = User.find_by_id(params[:id])
    
        if User.update(user_params)
            render json: user
        else
            render json: {error: "Something went wrong."}
        end
    end

    def destroy
        user = User.find_by_id(params[:id])
        if User.destroy
            render json: user
        else
            render json: {error: "Something went wrong."}
        end
    end

    private 

    def user_params
        params.permit(:username, :password)
    end
end
