# frozen_string_literal: true

class StudentSerializer < ActiveModel::Serializer
  attributes :id, :cohort_id, :name, :email, :phone, :image
  belongs_to :cohort
end
