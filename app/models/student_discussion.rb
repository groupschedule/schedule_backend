class StudentDiscussion < ApplicationRecord
    belongs_to :student
    belongs_to :discussion
end
