class Fixnum
  def to_words
    singles = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
    teens = {11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    tens = {1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
    hundreds = {1 => "one hundred", 2 => "two hundred", 3 => "three hundred", 4 => "four hundred", 5 => "five hundred", 6 => "six hundred", 7 => "seven hundred", 8 => "eight hundred", 9 => "nine hundred"}
    thousands = {0 => "", 1 => "one thousand", 2 => "two thousand", 3 => "three thousand", 4 => "four thousand", 5 => "five thousand", 6 => "six thousand", 7 => "seven thousand", 8 => "eight thousand", 9 => "nine thousand"}
    ten_thousands = {1 => "ten ", 2 => "twenty ", 3 => "thirty ", 4 => "forty ", 5 => "fifty ", 6 => "sixty ", 7 => "seventy ", 8 => "eighty ", 9 => "ninety "}
    my_digits = self.to_s.split("")
    my_digits.reverse!
    my_words = []
    # singles
    if my_digits.length.==(1)
      my_words.push(singles.fetch(self))
      my_words[0]
      # teens
  elsif (11..19).include?((my_digits[1] + my_digits[0]).to_i)
      my_words.push(teens.fetch((my_digits[1] + my_digits[0]).to_i))
      my_words.reverse!.join("")
      my_words[0]
      # tens
    elsif my_digits.length.==(2) && self.%(10).==(0)
      my_words.push(tens.fetch(my_digits[1].to_i))
      final_words = my_words.join(" ")
      final_words
    elsif my_digits.length.==(2) && self.%(10).!=(0)
      my_words.push(singles.fetch(my_digits[0].to_i))
      my_words.push(tens.fetch(my_digits[1].to_i))
      my_words.reverse!
      final_words = my_words.join(" ")
      final_words
      # hundreds
    elsif my_digits.length.==(3) && self.%(100).==(0)
      my_words.push(hundreds.fetch(my_digits[2].to_i))
      final_words = my_words.join(" ")
      final_words
    elsif my_digits.length.==(3) && self.%(100).!=(0)
      my_words.push(singles.fetch(my_digits[0].to_i))
      my_words.push(tens.fetch(my_digits[1].to_i))
      my_words.push(hundreds.fetch(my_digits[2].to_i))
      my_words.reverse!
      final_words = my_words.join(" ")
      final_words.strip
      # thousands
    elsif my_digits.length.==(4) && self.%(1000).==(0)
      my_words.push(thousands.fetch(my_digits[3].to_i))
      final_words = my_words.join(" ")
      final_words
    elsif my_digits.length.==(4) && self.%(1000).!=(0)
      my_words.push(singles.fetch(my_digits[0].to_i))
      my_words.push(tens.fetch(my_digits[1].to_i))
      my_words.push(hundreds.fetch(my_digits[2].to_i))
      my_words.push(thousands.fetch(my_digits[3].to_i))
      my_words.reverse!
      final_words = my_words.join(" ")
      final_words.strip
      # ten thousands
    elsif my_digits.length.==(5) && self.%(10000).==(0)
      my_words.push(ten_thousands.fetch(my_digits[4].to_i))
      final_words = my_words.join(" ")
      final_words += "thousand"
    elsif my_digits.length.==(5) && self.%(10000).!=(0)
      my_words.push(singles.fetch(my_digits[0].to_i))
      my_words.push(tens.fetch(my_digits[1].to_i))
      my_words.push(hundreds.fetch(my_digits[2].to_i))
      my_words.push(thousands.fetch(my_digits[3].to_i))
      my_words.push(ten_thousands.fetch(my_digits[4].to_i)+"thousand")
      my_words.reverse!
      p my_words.delete("")
      final_words = my_words.join(" ")
      final_words.strip
    end
  end
end
