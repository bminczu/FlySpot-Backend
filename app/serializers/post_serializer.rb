class PostSerializer < ActiveModel::Serializer
  has_many :reviews
  attributes :id, :image_url, :title, :user_id, :address, :latitude, :longitude, :category, :airspace, :description, :authors_rating, :video
end
