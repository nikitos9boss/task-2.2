def top_words(text)
  # заменяем все символы, кроме букв и апострофов, на пробелы
  words = text.downcase.gsub(/[^a-z']+/i, ' ').split(' ')

  # создаем хэш-таблицу для подсчета частоты встречаемости слов
  freq = Hash.new(0)
  words.each { |word| freq[word] += 1 }

  # сортируем слова по убыванию частоты и возвращаем топ-3
  freq.sort_by { |word, count| -count }.map(&:first).take(3)
end


text = "In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
  on Sundays, made away with three-quarters of his income."
puts top_words(text) #=> ["a", "of", "on"]# frozen_string_literal: true

