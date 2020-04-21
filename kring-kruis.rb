bord = {
    1 => "[ ]", 2 => "[ ]", 3 => "[ ]",
    4 => "[ ]", 5 => "[ ]", 6 => "[ ]",
    7 => "[ ]", 8 => "[ ]", 9 => "[ ]"
}

def wys_bord(bord_huidig)
    puts "#{bord_huidig[1]}#{bord_huidig[2]}#{bord_huidig[3]}"
    puts "#{bord_huidig[4]}#{bord_huidig[5]}#{bord_huidig[6]}"
    puts "#{bord_huidig[7]}#{bord_huidig[8]}#{bord_huidig[9]}"
end

def rondte(blok_keuse, bord_huidig,speler)
    if bord_huidig[blok_keuse] == "[ ]"
        if speler == "x"
            bord_huidig[blok_keuse] = " x "
        else
            bord_huidig[blok_keuse] = " o "
        end
    else
        puts "Jammer, kies 'n lee blokkie"
    end
    wys_bord(bord_huidig)
end

def toets_wenner(bord_huidig)
    wenner = 0
    keuses = []
    bord_huidig.each_value do |element|
        keuses.push(element)
    end
    #hierdie if toets vir 'n wenner. Die unless onder toets vir gelykop
    if bord_huidig[1] == " x " && bord_huidig[2] == " x " && bord_huidig[3] == " x "
        wenner = "x"
    elsif bord_huidig[4] == " x " && bord_huidig[5] == " x " && bord_huidig[6] == " x "
        wenner = "x"
    elsif bord_huidig[7] == " x " && bord_huidig[8] == " x " && bord_huidig[9] == " x "
        wenner = "x"
    elsif bord_huidig[1] == " x " && bord_huidig[4] == " x " && bord_huidig[7] == " x "
        wenner = "x"
    elsif bord_huidig[2] == " x " && bord_huidig[5] == " x " && bord_huidig[8] == " x "
        wenner = "x"
    elsif bord_huidig[3] == " x " && bord_huidig[6] == " x " && bord_huidig[9] == " x "
        wenner = "x"
    elsif bord_huidig[1] == " x " && bord_huidig[5] == " x " && bord_huidig[9] == " x "
        wenner = "x"
    elsif bord_huidig[3] == " x " && bord_huidig[5] == " x " && bord_huidig[7] == " x "
        wenner = "x"
    elsif bord_huidig[1] == " o " && bord_huidig[2] == " o " && bord_huidig[3] == " o "
        wenner = "o"
    elsif bord_huidig[4] == " o " && bord_huidig[5] == " o " && bord_huidig[6] == " o "
        wenner = "o"
    elsif bord_huidig[7] == " o " && bord_huidig[8] == " o " && bord_huidig[9] == " o "
        wenner = "o"
    elsif bord_huidig[1] == " o " && bord_huidig[4] == " o " && bord_huidig[7] == " o "
        wenner = "o"
    elsif bord_huidig[2] == " o " && bord_huidig[5] == " o " && bord_huidig[8] == " o "
        wenner = "o"
    elsif bord_huidig[3] == " o " && bord_huidig[6] == " o " && bord_huidig[9] == " o "
        wenner = "o"
    elsif bord_huidig[1] == " o " && bord_huidig[5] == " o " && bord_huidig[9] == " o "
        wenner = "o"
    elsif bord_huidig[3] == " o " && bord_huidig[5] == " o " && bord_huidig[7] == " o "
        wenner = "o"
    elsif !keuses.include? "[ ]"
        wenner = "-"
    else
        wenner = 0
    end
end

def spel(bord_huidig)
    wys_bord(bord_huidig)
    print "\n Wie gaan met X speel?  "
    speler_x = gets.chomp
    print "\n Wie gaan met O speel?  "
    speler_o = gets.chomp
    puts "\n BEGIN! \n"
    rondte = 1
    while toets_wenner(bord_huidig) == 0
        if rondte % 2 == 0
            speler = "o"
            speler_naam = speler_o
        else
            speler = "x"
            speler_naam = speler_x
        end
        print "Dit is #{speler_naam} se beurt. Watter blokkie? "
        blok_keuse = gets.chomp.to_i
        rondte(blok_keuse,bord_huidig,speler)
        rondte += 1
    end
    case toets_wenner(bord_huidig)
    when "x"
        puts "\n Die wenner is #{speler_x} met X"
    when "o"
        puts "\n Die wenner is #{speler_o} met O"
    else
        puts "\n Dit is gelykop. Probeer maar weer."
    end
end

spel(bord)