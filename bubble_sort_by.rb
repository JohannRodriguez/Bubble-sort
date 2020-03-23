def bubble_sort_by(array)
  loop do
    exitLoop = false
    (array.length - 1).times do |i|
      if yield(array[i], array[i + 1]) > 0
        array[i], array[i + 1] = array[i + 1], array[i]
        exitLoop = true
      end
    end
    return array if exitLoop == false
  end
end

puts "Add multiple words separated by a coma and no spaces"
user_array = gets.chomp.split(",")

print bubble_sort_by(user_array) { |left, right| left.length - right.length }
print bubble_sort_by(["hi","hello","hey"]) { |left, right| left.length - right.length }
print bubble_sort_by(["perro","sol","murciélago","gato","esfera"]) { |left, right| left.length - right.length }
