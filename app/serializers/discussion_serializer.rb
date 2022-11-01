class DiscussionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_many :student_discussions
end
