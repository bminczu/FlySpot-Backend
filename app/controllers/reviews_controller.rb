class ReviewsController < ApplicationController
    

    def index 
        reviews = Review.all
        render json: reviews, except: [:created_at, :updated_at]
    end

    def show
        review = Review.find_by_id(params[:id])
        render json: review
    end

    def create
        review = Review.new(review_params)
        if review.save
            render json: review, except: [:created_at, :updated_at]
        else
            render json: {error: "Something went wrong."}
        end
    end

    def updated
        review = Review.find_by_id(params[:id])
        if review.update(review_params)
            render json: review
        else
            render json: {error: "Something went wrong."}
        end
    end

    def destroy
        review = Review.find_by_id(params[:id])
        if review.destroy
            render json: review
        else
            render json: {error: "Something went wrong."}
        end
    end


    private 

    def review_params
        params.require(:review).permit(:user_id, :post_id, :user_rating, :comment)
    end

    
end
