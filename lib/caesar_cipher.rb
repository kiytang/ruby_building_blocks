def caesar_cipher(word, shift)
  letters = ('a'..'z').to_a.concat(('A'..'Z').to_a)
  decoded = ""

  word.each_char do |char|
    if letters.include?(char)
      decoded += letters[letters.index(char) - shift]
    else
      decoded += char  
    end
  end
  decoded
end

p caesar_cipher("Ciao Mondo!", 5)