def map(array)
  result = []
  count = 0
  while count < array.length
    cnum = yield(array[count])
    result.push(cnum)
    count += 1
  end
  result
end


def reduce(array, starting_point = 0)
  count = 0
  total = starting_point
  while count < array.length

    cur_num = array[count]

    puts "#{count} : Current num: #{cur_num}"
    puts "Total: #{total}"

    total = yield(cur_num, total)

    if !total
      total = false
    end

    count += 1
  end
  total
end