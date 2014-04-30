#test
#
# this is a test file I use to practice multi-line code or isolate bugs

arr = 
   [[1, 2, 3, 4], 
    [8, 9, 10], 
    [10, 2]]
arr.each do |e|
    if e.length > 3
      e.select! { |f| f.even? }
    else
      e.map { |f| f * 10 }
    end
end

puts arr