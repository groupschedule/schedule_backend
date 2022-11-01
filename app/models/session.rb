# frozen_string_literal: true

class Session < ApplicationRecord
    belongs_to :cohort
    belongs_to :technical_mentor
    has_many :comments
    has_many :students, through: :cohort
end
