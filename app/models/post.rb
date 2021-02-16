class Post < ApplicationRecord
    belongs_to :user
    has_many :reviews

    validates latitude, numericality: { only_integer: true }
end
