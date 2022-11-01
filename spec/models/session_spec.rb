# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Session, type: :model do
  let!(:session) { Session.new(cohort_id: 1, technical_mentor_id: 1, date: 2023 - 0o5 - 23, link: 'https://meet.google.com/ksh-jmmw-ach?authuser=0&hs=122') }

  describe '#cohort_id' do
    it 'returns the session\'s cohort_id' do
      expect(session.cohort_id).to eq(1)
    end
  end

  describe '#technical_mentor_id' do
    it 'returns the session\'s technical_mentor id' do
      expect(session.technical_mentor_id).to eq(1)
    end
  end

  describe '#date' do
    it 'returns the session\'s date' do
      expect(session.date)
    end
  end

  describe '#link' do
    it 'returns the session\'s link' do
      expect(session.link)
    end
  end
end
