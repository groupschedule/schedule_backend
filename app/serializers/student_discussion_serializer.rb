# frozen_string_literal: true

class StudentDiscussionSerializer < ActiveModel::Serializer
  attributes :id, :discussion_id, :student_id, :comment
  # belongs_to :student
end
