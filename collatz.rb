
def collatz
  longest_chain = 1
  longest_starting = 1
  starting_num = 1
  while starting_num < 1000000
    n = starting_num
    chain = 1 # accounting for 1, the end of every chain
    while n != 1
      if n.even?
        n = n/2
      else
        n = 3*n + 1
      end
      chain += 1
    end
    if chain > longest_chain
      longest_chain = chain
      longest_starting = starting_num
    end
    starting_num += 1
  end
  return longest_starting
end