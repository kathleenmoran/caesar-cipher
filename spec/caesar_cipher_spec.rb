# frozen_string_literal: true

require_relative '../lib/main'

describe 'CaesarCipher' do
  describe '#caesar_cipher' do
    it 'returns the message with a shift of zero' do
      expect(caesar_cipher('Message! With! A... Shift of 0!', 0)).to eql('Message! With! A... Shift of 0!')
    end
  end
end
