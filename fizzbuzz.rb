i = 1
maks = gets.chomp.to_i

while i < maks+1
    if i%3 == 0 && i%5 == 0
        puts "fizzbuzz"
    elsif i%3 == 0
        puts "fizz"
    elsif i%5 == 0
        puts "buzz"
    else
        puts i
    end
    i += 1
end