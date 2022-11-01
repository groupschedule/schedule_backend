# frozen_string_literal: true

class TechnicalMentorSerializer < ActiveModel::Serializer
  attributes :name, :email, :phone
end
