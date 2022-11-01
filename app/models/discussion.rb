# frozen_string_literal: true

class Discussion < ApplicationRecord
  has_many :student_discussions
end
