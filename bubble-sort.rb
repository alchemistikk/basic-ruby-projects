def bubble_sort(arr)
  loop do
    swapped = false
    for i in 1..arr.length - 1
      if arr[i-1] > arr[i]
        first_value = arr[i-1]
        arr[i-1] = arr[i]
        arr[i] = first_value
        swapped = true
      end
    end
    break if swapped == false
  end 
  arr
end

p bubble_sort([4,3,78,2,0,2]) #=> [0,2,2,3,4,78]