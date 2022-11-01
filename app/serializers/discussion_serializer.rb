# frozen_string_literal: true

class DiscussionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
end
