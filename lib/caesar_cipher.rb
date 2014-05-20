def encode_text(text, shift_value)
  letters = ('a'..'z').to_a.concat(('A'..'Z').to_a)
  encoded_text = ""

  text.each_char do |char|
    if letters.include?(char)
      encoded_text += letters[letters.index(char) + shift_value]
    else
      encoded_text += char  
    end
  end
  encoded_text
end


p encode_text("Ciao Mondo!", 5)