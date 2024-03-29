def encode_text(text, shift_value)
  alphabet = ('a'..'z').to_a.concat(('A'..'Z').to_a)
  encoded_text = ""

  text.each_char do |char|
    if alphabet.include?(char)
      encoded_text += alphabet[alphabet.index(char) + shift_value]
    else
      encoded_text += char  
    end
  end
  encoded_text
end

def decode_text(text, shift_value)
    alphabet = ('a'..'z').to_a.concat(('A'..'Z').to_a)
    decoded_text = ""
    
    text.each_char do |char|
    if alphabet.include?(char)
      decoded_text += alphabet[alphabet.index(char) - shift_value]
    else
      decoded_text += char  
    end
  end
  decoded_text
end

p encode_text("Ciao Mondo!", 5)
p decode_text("Hnft Rtsit!", 5)