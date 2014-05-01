#quiz1


1) What is the value of a after the below code is executed?

  a = 1
  b = a
  b = 3

  *** a is 1 ***


2) What's the difference between an Array and a Hash?

  *** array = ordered list, hash = key/value pairs ***

3) Every Ruby expression returns a value. Say what value is returned in the below expressions:

arr = [1, 2, 3, 3]  *** => [1, 2, 3, 3] ***
[1, 2, 3, 3].uniq   *** => [1, 2, 3] ***
[1, 2, 3, 3].uniq!  *** => [1, 2, 3] ***


4) What's the difference between the map and select methods for the Array class? Give an example of when you'd use one versus the other.

  *** select returns new array where the block evaluates to true ***
  *** map returns new array after evaluating block on each element ***

5) Say you wanted to create a Hash. How would you do so if you wanted the hash keys to be String objects instead of symbols?

  *** hash = { "key" => value } ***

6) What is returned?

  x = 1

  x.odd? ? "no way!" : "yes, sir!"

  *** "no way!" ***

7) What is x?

  x = 1

  3.times do
    x += 1
  end

  puts x

  *** x is 4 ***

8) What is x?

  3.times do
    x += 1
  end

  puts x

  *** ERROR, x isn't defined ***