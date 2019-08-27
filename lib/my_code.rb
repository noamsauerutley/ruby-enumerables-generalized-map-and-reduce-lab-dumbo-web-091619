
def map(array)
new_array = []
counter = 0
while array[counter]
  new_array.push(yield(array[counter]))
  counter +=1
end
new_array
end

def reduce(array, starting_point=nil)
  starting_point ? single_value = starting_point, counter = 0 : single_value = array[0], counter = 1
  while array[counter]
    single_value = yield(single_value, array[counter])
    counter+=1
  end
  single_value
end
