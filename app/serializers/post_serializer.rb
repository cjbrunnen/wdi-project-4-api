class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :role, :description, :sex, :location, :lat, :lng, :telephone
  has_one :user
end
