def is_even?(x)
  return x%2 == 0
end

def is_prime(x)
  # go fuck your self
   upper_limit = 1+(x/2).round
   (2..upper_limit).each { |i|
      if x%i == 0
        return false
      end
    }
    return true
end

i = 2
while 1==1 do
  i = i + 1
  #t0 = time.now.to_f
  if is_prime(i)
  #dt = time.now.to_f
   puts  "found a prime: #{i}"
   end
end