class SessionSerializer < ActiveModel::Serializer
  attributes :id, :session_name, :cohort_id, :technical_mentor, :date, :time, :link, :announcement
  has_many :students, through: :cohort
  has_many :comments
end
