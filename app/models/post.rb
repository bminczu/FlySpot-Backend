class Post < ApplicationRecord
    belongs_to :user
    has_many :reviews
    has_one_attached :image

    # validates latitude, numericality: { only_integer: true }
end
