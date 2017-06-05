PAIRS = [['A', 'N'], ['B', 'O'], ['C', 'P'], ['D', 'Q'], ['E', 'R'], ['F', 'S'], 
        ['G', 'T'], ['H', 'U'], ['I', 'V'], ['J', 'W'], ['K', 'X'], ['L', 'Y'], ['M', 'Z'], 
        ['a', 'n'], ['b', 'o'], ['c', 'p'], ['d', 'q'], ['e', 'r'], ['f', 's'], 
        ['g', 't'], ['h', 'u'], ['i', 'v'], ['j', 'w'], ['k', 'x'], ['l', 'y'], ['m', 'z'],
        ]

NAMES = "Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unyog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Wbua Ngnanfbss
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu"

def find_partner(a)
  partner = PAIRS.select {|pair| pair.include? a}.flatten.select {|e| e != a}[0]
end

converted = NAMES.chars.map do |char|
  if find_partner(char)
    find_partner(char)
  else
    char
  end
end

puts converted.join('')


