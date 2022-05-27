# frozen_string_literal: true

require_relative '../lib/main'

describe 'CaesarCipher' do
  describe '#caesar_cipher' do
    it 'returns the message with a shift of zero' do
      expect(caesar_cipher('Message! With! A... Shift of 0!', 0)).to eql('Message! With! A... Shift of 0!')
    end
    it 'returns an empty message' do
      expect(caesar_cipher('', 13)).to eql('')
    end
    it 'returns a lowercase message' do
      expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz', 13)).to eql('nopqrstuvwxyzabcdefghijklm')
    end
    it 'returns an uppercase message' do
      expect(caesar_cipher('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 22)).to eql('WXYZABCDEFGHIJKLMNOPQRSTUV')
    end
    it 'returns a message shifted by more than 26' do
      expect(caesar_cipher('this is a message', 42)).to eql('jxyi yi q cuiiqwu')
    end
  end
end
