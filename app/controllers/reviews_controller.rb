class ReviewsController < ApplicationController
    

    def index 
        reviews = Review.all
        render json: reviews, except: [:created_at, :updated_at]
    end

    def show
        review = Review.find_by(params[:id])
        render json: review.to_json(include: [:tasks])
    end

    def create
        review = Review.new(review_params)
        if Review.save
            render json: review, except: [:created_at, :updated_at]
        else
            render json: {error: "Something went wrong."}
        end
    end

    def updated
        review = Review.find_by(params[:id])
        if Review.update(review_params)
            render json: review
        else
            render json: {error: "Something went wrong."}
        end
    end

    def destroy
        review = Review.find_by(params[:id])
        if Review.destroy
            render json: review
        else
            render json: {error: "Something went wrong."}
        end
    end


    private 

    def review_params
        params.require(:review).permit(:user_id, :post_id, :user_id, :comment)
    end

    
end
