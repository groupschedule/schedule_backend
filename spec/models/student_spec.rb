require 'rails_helper'

RSpec.describe Student, type: :model do
  let!(:student) { Student.new(cohort_id: 1, name: "David Mwenje", email: "davidmwenje@gmail.com", phone: 254701222333) }


  describe '#cohort_id' do
    it 'returns the student\'s cohort id' do
      expect(student.cohort_id).to eq(1)
    end
  end

  describe '#name' do
    it 'returns the student\'s name' do
      expect(student.name).to eq('David Mwenje')
    end
  end

  describe '#email' do
    it 'returns the student\'s email' do
      expect(student.email).to eq('davidmwenje@gmail.com')
    end
  end

  describe '#phone' do
    it 'returns the student\'s phone' do
      expect(student.phone).to eq(254701222333)
    end
  end
end
