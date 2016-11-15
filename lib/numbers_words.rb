class Fixnum
  def to_words
    singles = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
    teens = {11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    tens = {1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
    my_digits = self.to_s.split("")
    my_digits.reverse!
    my_words = []
    if my_digits.length.==(1)
      my_words.push(singles.fetch(self))
      my_words[0]
  elsif (11..19).include?((my_digits[1] + my_digits[0]).to_i)
      my_words.push(teens.fetch((my_digits[1] + my_digits[0]).to_i))
      my_words.reverse!.join("")
      my_words[0]
    elsif my_digits.length.==(2) && self.%(10).==(0)
      my_words.push(tens.fetch(my_digits[1].to_i))
      final_words = my_words.join("")
      final_words
    elsif my_digits.length.==(2) && self.%(10).!=(0)
      my_words.push(singles.fetch(my_digits[0].to_i))
      my_words.push(tens.fetch(my_digits[1].to_i))
      my_words.reverse!
      final_words = my_words.join("-")
      final_words
    end
  end
end
