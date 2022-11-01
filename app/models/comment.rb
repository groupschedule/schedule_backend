# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :session
  belongs_to :student
end
