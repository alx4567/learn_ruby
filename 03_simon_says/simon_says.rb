def echo(i)
  i
end

def shout(i)
  i.upcase
end

def repeat(i, b=1)
  if b == 1
    i + ' ' + i
  else
    i + ((' ' + i) * (b-1))
  end
end

def start_of_word(x, y)
  x[0, y]
end

def first_word(x)
  y = x.split
  y[0]
end

def titleize(x)
  words = x.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end
