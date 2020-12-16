
# The first time through our while loop, i is equal to 0. 
# The second time through the loop, i is 1, and so on. This will continue 
# until i is equal to the index number of the last item in our array aka length of array





# def hello_t(array)
#     if block_given? # so method can be called if or if not a block is given
#     i = 0 # counter var i starting at 0
    
#     while i < array.length # executes as long as i is less than the array length
#         yield array[i] 
#     # above use the brackets [] to grab the value of 
#     # each successive index (element in array)
#     # as we proceed through our while loop, yielding each to a block

#         i = i + 1 # increments/adds i by 1 each iteration
#         # need to yield each member of the array to the block
#     end
#     array # tell our method to return the original 
#     # array simply by having that array be the last line of the method.
#     else # so method can be called if or if not a block is given
#         puts "Hey! No block was given!" 
# end
# # Our #hello_t method will yield each element of the array to the 
# # block if a block is present. Otherwise, it will puts out a helpful phrase.


# In the code-along above, we built our own implementation of the #each method. We used while to iterate through each element of the array and passed, or yielded, each successive element to an accompanying block. That block used a parameter placeholder, |name|, to set a variable, name, equal to whatever value is yielded into the block at each step of the iteration. 
# That block also contained code to execute with each yielded element in turn.

# https://mixandgo.com/learn/ruby-blocks
# https://allaboutruby.wordpress.com/2006/01/20/ruby-blocks-101/


# ["Tim", "Tom", "Jim"]

# hello_t(["Tim", "Tom", "Jim"]) do |name|
#     if name.start_with?("T")
#       puts "Hi, #{name}"
#     end
#   end 


def hello_t(array)
    if block_given?
      i = 0
  
      while i < array.length
        yield(array[i])
        i = i + 1
      end
  
      array
    else
      puts "Hey! No block was given!"
    end
  end 
