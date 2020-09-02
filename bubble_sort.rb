def bubble_sort(arr)
  len = arr.length

  loop do 
    swapped = false
    (1..len - 1).each do |i|
      if arr[i - 1] > arr[i]
        arr[i - 1], arr[i] = arr[i], arr[i - 1]
        swapped = true
      end
    end
    len -= 1
    break if swapped == false
  end
  arr
end

p bubble_sort([4,3,78,2,0,2]) # [0, 2, 2, 3, 4, 78]

