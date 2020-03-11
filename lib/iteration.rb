
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
def join_ingredients(src)
  
  outer_results = []
  row_index = 0
  while row_index < src.count do
    element_index = 0
    inner_results = []
    while element_index < src[row_index].count do
      inner_results << src[row_index][element_index]
      element_index += 1
    end
    outer_results << ("I love #{inner_results[0]} and #{inner_results[1]} on my pizza")
    row_index += 1
  end
  outer_results
end


  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
def find_greater_pair(src)
  row_index = 0
  larger_number = []
  while row_index < src.count do
    element_index = 0
    inner_results = []
    while element_index < src[row_index].count do
      sorted = src[row_index].sort
      inner_results << src[row_index][element_index]
      element_index += 1
    end
    larger_number << sorted[-1]
    row_index += 1
  end
  larger_number
end



  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
def total_even_pairs(src)
  outer_results = []
  row_index = 0
  while row_index < spice_rack.count do
    element_index = 0
    inner_results = []
    while element_index < spice_rack[row_index].count do
      if spice_rack[row_index][element_index][0] == "P"
        inner_results << spice_rack[row_index][element_index]
      end
      element_index += 1
    end
    outer_results << inner_results
    row_index += 1
  end
end
