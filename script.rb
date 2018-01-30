#Patrick Poggi
# Part 1
def double_elem(array)
  #itereate through array and double
  array = array.map do |key|
    key * 2
  end
  return array
end

def missing_num(array)
  # ADD YOUR CODE HERE
  #itereate through the array and compare against the index
  array.each_with_index do |key, indexValue|
    if indexValue != key
      return indexValue
    end
  end
  #return the final number of the array+1
  return array.length;
end

def check_product?(array, n)
  #if array < 3 return false
  if array.length < 3
    return false
  end
  #create permutations of the array of length 3
  permutation = array.permutation(3).to_a
  #reduce the arrays to their products
  products = permutation.map do |array| #combination
    array.reduce(:*)
  end
  #find (if any) the index of 'n' parameter
  indexOfN = products.index(n)
  #if not present return false
  if(indexOfN == nil)
    return false
  end
  #return true
  return true
end

# Part 2
def concatenate_words(w1, w2)
  # ADD YOUR CODE HERE
  return w1.strip() + " " + w2.strip()
end

def valid_parentheses?(s)
  #get first
  first = s.chr
  #get end of brace/bracket/parenthesis
  match = first.next
  #remove first
  s.gsub!(first,"")
  #break up string by the match
  parts = s.partition(match)
  #tricky part
  #iterate through each sub array until you end up with ["","*",""]
  #["","*",""] means there are matching pairs for each where *
  # is a closing bracket
  if(parts[0].length >1)
    valid_parentheses?(parts[0])
  end
  if(parts[2].length >1)
    valid_parentheses?(parts[2])
  end

  if(parts[0] == "" && parts[1].length == 1 && parts[2] == "")
    return true
  end
  return false
end

puts 'parenthesis'
puts valid_parentheses?("()[]{}") #returns true
puts valid_parentheses?("(()())") #returns true
puts valid_parentheses?("(()([{}]))") #returns true
puts valid_parentheses?("[[)([{}]))") #returns false
puts valid_parentheses?("(}") #returns false


def longest_common_prefix(s)
  sentinel =0;
  #take array and grab first element
  choppedString = s[0]
  #chop the string to find prefixes
  #if it is common and starts at the first index return, else
  #keep chopping till length of choppedString == 0
  loop do
    s.each do |key|
      if(key.index(choppedString) == 0)
        sentinel = sentinel+1
      end
    end
    #check sentinel to see if every position at the array has the valid substring
    if(sentinel == s.length)
      return choppedString
    end
    #chop the end and keep iterating
    choppedString.chop!
    #once choppedString is empty, we have not found anything
    break if choppedString.length == 0
  end
  return ""
end

# Part 3
class Student
# ADD YOUR CODE HERE

end
