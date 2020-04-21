alfabet = {
    "a" => 1,
    "b" => 2,
    "c" => 3,
    "d" => 4,
    "e" => 5,
    "f" => 6,
    "g" => 7,
    "h" => 8,
    "i" => 9,
    "j" => 10,
    "k" => 11,
    "l" => 12,
    "m" => 13,
    "n" => 14,
    "o" => 15,
    "p" => 16,
    "q" => 17,
    "r" => 18,
    "s" => 19,
    "t" => 20,
    "u" => 21,
    "v" => 22,
    "w" => 23,
    "x" => 24,
    "y" => 25,
    "z" => 26
}

print "Hoe ver moet dit regs skuif? "
skuif = gets.chomp.to_i

nuwe_alfabet = {}
string = "piet pompies"
nuwe_string_array = []

string_array = string.split('')

alfabet.each do |letter, nommer|
    if nommer + skuif < 27
        nommer += skuif
    else
        nommer = nommer + skuif - 26
    end
    nuwe_alfabet[letter] = nommer
end

print "Die nuwe string is: "

string_array.each do |letter|
    nuwe_nommer = nuwe_alfabet[letter]
    nuwe_letter = alfabet.key(nuwe_nommer)
    print nuwe_letter
end

puts ""