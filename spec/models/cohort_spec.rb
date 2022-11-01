# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cohort, type: :model do
  let!(:cohort) { Cohort.new(name: 'SE-13', technical_mentor_id: 1) }

  describe '#name' do
    it 'returns the cohort\'s name' do
      expect(cohort.name).to eq('SE-13')
    end
  end

  describe '#technical_mentor_id' do
    it 'returns the cohort\'s technical_mentor id' do
      expect(cohort.technical_mentor_id).to eq(1)
    end
  end
end
