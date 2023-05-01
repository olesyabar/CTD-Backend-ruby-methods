def hangman(word, letters)
  word.each_char do |w|
    if not letters.include?(w)
      word = word.tr(w, "_")
    end
  end
  return word
end

puts(hangman("bob",["b"]))
puts(hangman("alphabet",["a","h"]))