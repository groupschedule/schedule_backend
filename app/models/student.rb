class Student < ApplicationRecord
    belongs_to :cohort
    has_many :comments

    has_secure_password
end
