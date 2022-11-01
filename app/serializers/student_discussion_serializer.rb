class StudentDiscussionSerializer < ActiveModel::Serializer
  attributes :id, :discussion_id, :student_id, :comment
end
