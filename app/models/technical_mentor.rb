class TechnicalMentor < ApplicationRecord
    has_many :sessions
    has_many :students, through: :cohort
end
