class Announcement < ApplicationRecord
    belongs_to :session
    belongs_to :technical_mentor
end
