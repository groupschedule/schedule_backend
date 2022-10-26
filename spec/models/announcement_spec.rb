require 'rails_helper'

RSpec.describe Announcement, type: :model do
  let!(:announcement) { Announcement.new(technical_mentor_id: 1, session_id: 1, description: "Session has been canncelled") }


  describe '#technical_mentor_id' do
    it 'returns the announcement\'s technical_mentor id' do
      expect(announcement.technical_mentor_id).to eq(1)
    end
  end

  describe '#session_id' do
    it 'returns the announcement\'s session id' do
      expect(announcement.session_id)
    end
  end

  describe '#description' do
    it 'returns the announcement\'s description' do
      expect(announcement.description)
    end
  end
end
