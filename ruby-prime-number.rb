# kód se dá samozřejmě i bez uživatelského vstupu, kdy se vyvolá funkce s číslem jako argumentem, pokud vkládáme input, tak ho převedeme na integer

puts "Vložte číslo, které chcete zkontrolovat: "
user_input = gets.chomp.to_i

def is_prime(number)
  # pokud je číslo menší než 2, vrátí se false (číslo jedna NENÍ prvočíslo)
  return false if number < 2
  
  for x in 2..Math.sqrt(number)
    # prvočíslo je číslo větší než jedna, které je bezezbytku dělitelné jen dvěma děliteli: samo sebou a jedničkou. Proto pokud tato podmínka vyhodnotí, že zvolené číslo vydělené druhou odmocninou čísla, vydělí bezezbytku, je jasné, že vybrané číslo není prvočíslem.
    return false if number % x == 0
  end
  #pokud se nenajde dělitel, funkce vyhodnotí, že je zvolené číslo prvočíslo
  puts "Číslo #{number} je prvočíslo."
#   return true
end

puts is_prime(user_input)

# puts is_prime(1) # puts false
