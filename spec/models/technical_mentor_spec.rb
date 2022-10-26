require 'rails_helper'

RSpec.describe TechnicalMentor, type: :model do
  let!(:technical_mentor) { TechnicalMentor.new(name: "Ian Okumu", email: "ianokumu@gmail.com", phone: 254722567890) }


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
      expect(technical_mentor.phone).to eq('254722567890')
    end
  end
end