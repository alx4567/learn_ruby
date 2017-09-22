#write your code here
def translate(word)
  consonant = ['b','c','d','f','g','h','j','k','l','m','n','p', 'r','s','t','v','w','x','y','z']

  if word.include?(" ")
    words = word.split.map do |i|
      if i.start_with? 'a','e', 'i', 'o', 'u'
        i << 'ay'
      elsif i[0..2] == 'squ'  || consonant.include?(i[0]) && consonant.include?(i[1]) && consonant.include?(i[2])
          word << word[0..2] + 'ay'
          word[3..-1]
      elsif i[0..1] == 'qu'  || consonant.include?(i[0]) && consonant.include?(i[1])
        i << i[0..1] + 'ay'
        i[2..-1]
      elsif consonant.include?(i[0])
        i << i[0.1] + 'ay'
        i[1..-1]
      end
    end
    words.join(" ")

  elsif word.start_with? 'a','e', 'i', 'o', 'u'
    word << 'ay'

  elsif word[0..2] == 'squ'  || consonant.include?(word[0]) && consonant.include?(word[1]) && consonant.include?(word[2])
      word << word[0..2] + 'ay'
      word[3..-1]

  elsif word[0..1] == 'qu'  || consonant.include?(word[0]) && consonant.include?(word[1])
    word << word[0..1] + 'ay'
    word[2..-1]

  elsif consonant.include?(word[0])
    word << word[0.1] + 'ay'
    word[1..-1]
  end
end
