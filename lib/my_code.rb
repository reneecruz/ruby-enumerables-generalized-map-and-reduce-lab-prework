def map(source_array)
  counter = 0 
  new_array = []
  
  while counter < source_array.length do 
  new_array << yield(source_array[counter])
  counter += 1 
  end
  new_array
end 


def reduce(source_array, starting_point = 0)
  
  sum = starting_point
  counter = 0
  
  
  while counter < source_array.length do 
    sum = yield(source_array[counter], sum)
    counter += 1
  end
  sum 
end
  
    #next memo if memo = !true ? false : true
    #next memo if memo = true ? true : false
    #break false if n == !true
    #memo + n 
