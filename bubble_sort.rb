def bubble_sort(array)
  loop do
    exitLoop = false
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        exitLoop = true
      end
    end
    return array if exitLoop == false
  end
end

print bubble_sort([1,4,1,3,2,5,7,5,3])
print bubble_sort([20,40,75,80,10,30,25])
print bubble_sort([131,256,846,996,314,211])
