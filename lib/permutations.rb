
def permutations?(string1, string2)
  raise NotImplementedError, "permutations? not implemented"
  return false if string1.length != string2.length
  hash1 = count_chars(string1)
  hash2 = count_chars(string2)
  if hash1 == hash2
    return true
  end
  return false
end

def count_chars(string)
  hash = {}
  string_array = string.split("")
  string_array.each do |letter|
    if !hash[letter]
      hash[letter] = 1
    else
      hash[letter] += 1
    end
  end
  return hash
end
