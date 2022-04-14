alphabet = [['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'], ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']]

str = "HELLO world!!#/"

def cipher(str, alphabet, factor)
  new_arr = Array.new()
  case_factor = 0

  # checks each character in str
  str.chars.each do |letter|

  # switch factor to target up/down case alphabet list
  letter == letter.downcase ? case_factor = 0 : case_factor = 1

    # case - handling of spaces
    if letter.match?(/\s/)
      new_arr << ' ' 
    elsif letter.match?(/\S/)
      new_arr << letter
    else 
      new_arr << alphabet[case_factor][alphabet[case_factor].find_index(letter) + factor] 
    end
  
  end
  
  new_arr.join()
end

p cipher(str, alphabet, 4)