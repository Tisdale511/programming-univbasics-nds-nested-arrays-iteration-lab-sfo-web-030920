def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
    i = 0
    new_arr = []
    while i < src.length do
      phrase = "I love " + src[i][0] + " and " + src[i][1] + " on my pizza"
      new_arr << phrase
      i += 1
    end
    return new_arr
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner 
  i = 0
  new_arr = []
  while i < src.length do
    sorted = src[i].sort
    new_arr << sorted[1]
    i += 1
  end
  return new_arr
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  total = 0
  i = 0
  while i < src.length do
    if(src[i][0] % 2 == 0 && src[i][1] % 2 == 0)
      total += src[i][0]
      total += src[i][1]
    else
      total
    end
    i += 1
  end
  return total
end
