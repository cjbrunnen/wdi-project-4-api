class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :role, :description, :sex, :location
  has_one :user
end
