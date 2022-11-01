# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TechnicalMentor, type: :model do
  let!(:technical_mentor) do
    TechnicalMentor.new(name: 'Ian Okumu', email: 'ianokumu@gmail.com', phone: 254_722_567_890)
  end

  describe '#name' do
    it 'returns the technical_mentor\'s name' do
      expect(technical_mentor.name).to eq('Ian Okumu')
    end
  end

  describe '#email' do
    it 'returns the technical_mentor\'s email' do
      expect(technical_mentor.email).to eq('ianokumu@gmail.com')
    end
  end

  describe '#phone' do
    it 'returns the technical_mentor\'s phone' do
      expect(technical_mentor.phone).to eq(254_722_567_890)
    end
  end
end
