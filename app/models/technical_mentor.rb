class TechnicalMentor < ApplicationRecord
    has_many :sessions
    has_many :cohorts
    has_many :students, through: :cohorts 

  has_secure_password
end
