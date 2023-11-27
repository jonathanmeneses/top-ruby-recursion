# Create a method which takes a number and returns an array
# containing that many numbers from the fibonacci sequence
# solves first iteratively, then recursively

def fibs(number)
  array_to_return = []
  number.times do
    if array_to_return.length == 0
      number_to_add = 0
    elsif array_to_return.length == 1
      number_to_add = 1
    else
      number_to_add = array_to_return[-2] + array_to_return[-1]
    end
    array_to_return.append(number_to_add)
  end
  return array_to_return

end

p fibs(10)




def fibs_rec(number)
  return [0] if number == 1
  return [0,1] if number == 2

  sequence = fibs_rec(number - 1)
  sequence << sequence[-1] + sequence[-2]
end

p fibs_rec(10)
