#pass by reference/value

def some_method(str)
  str.changeit
  return new_str
end

outer_str = 'hi'
outer_str = some_method(outer_str)

#ruby way

def some_method(obj)
  obj.uniq #pass by value, HOWEVER, if you call a method that mutates the caller, then it's pass by reference
end

outer_obj = [1, 2, 2, 3, 3]
some_method(outer_obj)

puts outer_obj 