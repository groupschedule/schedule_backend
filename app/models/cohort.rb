# frozen_string_literal: true

class Cohort < ApplicationRecord
  has_many :students
  has_many :sessions
  belongs_to :technical_mentor
end
