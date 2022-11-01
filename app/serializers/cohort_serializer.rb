# frozen_string_literal: true

class CohortSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :students
end
