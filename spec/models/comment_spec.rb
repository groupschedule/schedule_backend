# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  let!(:comment) { Comment.new(student_id: 1, session_id: 1, description: 'I loved the session') }

  describe '#student_id' do
    it 'returns the comment\'s student id' do
      expect(comment.student_id).to eq(1)
    end
  end

  describe '#session_id' do
    it 'returns the comment\'s session id' do
      expect(comment.session_id).to eq(1)
    end
  end

  describe '#description' do
    it 'returns the comment\'s description' do
      expect(comment.description).to eq('I loved the session')
    end
  end
end
