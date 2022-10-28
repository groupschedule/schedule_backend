class StudentSerializer < ActiveModel::Serializer
  attributes :cohort_id, :name, :email, :phone
end
