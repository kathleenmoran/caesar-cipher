# frozen_string_literal: true

def caesar_cipher(message, shift)
  message.chars.reduce('') { |new_message, char| new_message + get_new_char(char, shift % 26) }
end

def shift(start_ord, end_ord, char_ord, shift)
  new_ord = char_ord + shift
  return (start_ord + (new_ord % end_ord) - 1).chr if new_ord > end_ord

  new_ord.chr
end

def get_new_char(char, shift)
  return shift('a'.ord, 'z'.ord, char.ord, shift) if char.ord.between?('a'.ord, 'z'.ord)
  return shift('A'.ord, 'Z'.ord, char.ord, shift) if char.ord.between?('A'.ord, 'Z'.ord)

  char
end
