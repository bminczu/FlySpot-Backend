class PostSerializer < ActiveModel::Serializer
  attributes :id
  has_many :reviews
end
