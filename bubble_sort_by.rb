def bubble_sort_by(array)
  loop do
    exitLoop = false
    (array.length - 1).times do |i|
      if (array[i].length - array[i + 1].length) > 0
        array[i], array[i + 1] = array[i + 1], array[i]
        exitLoop = true
      end
    end
    return array if exitLoop == false
  end
end

print bubble_sort_by(["hi","hello","hey"])
print bubble_sort_by(["perro","sol","murciélago","gato","esfera"])
