class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    newstr = ""
    str.split(" ").each do |s|
       # more than 4 characters
       if s.length > 4
         # if first character matches upper case letter
         if /[A-Z]/=~ s[0]
           # replace with Marklar, and add the last character if it's not a word character
           newstr += "Marklar" + s[-1,1].sub(/\w/,"") + " "
         else
           # replace with marklar, and add the last character if it's not a word character
           newstr += "marklar" + s[-1,1].sub(/\w/,"") + " "
         end
       else
         # keep
         newstr += s + " "
       end
    end
    # remove extra space from final word
    return newstr.strip
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    i = 0
    fibonaccis = Array.new()
    evensum = 0
    begin
      if i < 2
        fibonaccis[i] = i
      else
        fibonaccis[i] = fibonaccis[i-2] + fibonaccis[i-1]
      end 
      # if even, add to total
      if fibonaccis[i] % 2 == 0
        evensum += fibonaccis[i]
      end
      i += 1
    end until i > nth
    return evensum
  end

end