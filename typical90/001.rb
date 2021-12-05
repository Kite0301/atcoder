n,l=gets.split.map &:to_i
k=gets.to_i
a=gets.split.map &:to_i

a << l
list = (n+1).times.map do |i|
  if i == 0
    a[i]
  else
    a[i] - a[i-1]
  end
end


(n-k).times do
  min = list.min
  index = list.find_index min

  if index == 0
    list[1] += min
  elsif index == list.size - 1
    list[index - 1] += min
  elsif list[index - 1] < list[index + 1]
    list[index - 1] += min
  else
    list[index + 1] += min
  end
  list.delete_at index
end

p list.min
