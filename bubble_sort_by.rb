def bubble_sort_by(array)
  loop do
    exit_loop = false
    (array.length - 1).times do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        exit_loop = true
      end
    end
    return array if exit_loop == false
  end
end

puts 'Add multiple words separated by a coma and no spaces'
user_array = gets.chomp.split(',')

print bubble_sort_by(user_array) { |left, right| left.length - right.length }
print bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
print bubble_sort_by(%w[perro sol murciélago gato esfera]) { |left, right| left.length - right.length }
