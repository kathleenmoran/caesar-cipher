def caesar_cipher(message, shift)
  encoded_message = ""
  message.chars.each do |char|
    puts char.ord
    if char.ord.between?("a".ord, "z".ord)
      encoded_message += shift("a".ord, "z".ord, char.ord, shift)
    elsif char.ord.between?("A".ord, "Z".ord)
      encoded_message += shift("A".ord, "Z".ord, char.ord, shift)
    else
      encoded_message += char
    end
  end
  puts encoded_message
end

def shift(start_ord, end_ord, char_ord, shift)
  new_ord = char_ord + shift 
  if new_ord > end_ord
    (start_ord + (new_ord % end_ord) - 1).chr
  else
    new_ord.chr
  end
end