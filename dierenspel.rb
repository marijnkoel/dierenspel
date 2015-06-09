dieren = ['aal','aap','adder','alligator','anaconda','ansjovis','antilope','arend','atalanta','baviaan','bedwant','beer',
'bever','big','bij','bizon','bloedzuiger','boa','bok','bosuil','buizerd','bultrug','bunzing','chimpansee','citroenvlinder',
'cobra','coyote','dagpauwoog','das','dolfijn','dromedaris','duif','dwerguil','eekhoorn','eend','egel','ekster','eland','ezel',
'fazant','flamingo','fret','fuut','gans','gazelle','geit','gekko','gerbil','gier','giraffe','gnoe','gorilla','grizzlybeer',
'haai','haas','hagedis','hamerhaai','hamster','havik','hermelijn','hert','hoen','hommel','hond','hooiwagen','huismus',
'huisspin','hyena','ijsbeer','ijsvogel','jachtluipaard','jaguar','jakhals','kaaiman','kabeljauw','kameel','kameleon','kangoeroe',
'karper','kat','kerkuil','kever','kikker','kluut','koekoek','kolibrie','konijn','koolmees','kraai','kraanvogel','kruisspin',
'kwartel','lama','landmeeuw','leeuw','leguaan','lepelaar','lieveheersbeestje','lynx','makreel','marmot','marter','meeuw','mestkever',
'mier','miereneter','mijt','mol','muis','mus','naaktslak','nachtegaal','nerts','neushoorn','nijlpaard','oehoe','olifant','ooievaar','orka',
'otter','paard','pad','paling','panter','papegaai','patrijs','pipelmees','poema','potvis','python','raaf','rat','ratelslang','ree',
'reiger','rob','rog','roodborst','rups','salamander','schaap','schildbad','schol','schorpioen','slang','specht','sperwer','spreeuw','steenbok',
'stekelvarken','stokstaartje','teek','tijger','tonijn','uilvlinder','uil','valk','varken',
'vinvis','vleermuis','vogelbekdier','vos','walvis','walibi','wasbeer','wesp','wezel','wolf','wolfspin','worm','yak','zalm','zebra',
'zeeanemoon','zeeduivel','zee-egel','zeehond','zeeleeuw','zeemeeuw','zeepaardje','zeester','zwaan','zwaluw','zwarte weduwe','zwijn']

used = []
counter = 0

puts 'kies je startdier'
startdier = gets.chomp
last_dier = startdier

while counter < 3
  puts 'kies je dier'
  dier = gets.chomp

  last_letter = last_dier.split("").last

  if dieren.include?(dier) && used.include?(dier) == false && dier.split("")[0] == last_letter
    puts 'Jij koos voor ' + dier
    used.push dier
    last_dier = dier
    last_letter = last_dier.split("").last
    while true
      pc = dieren[rand(dieren.length)]
      break if dieren.include?(pc) && used.include?(pc) == false && pc.split("")[0] == last_letter
    end

    last_dier = pc
    puts 'je tegenstander koos voor ' + pc

  elsif (dier.split("")[0] == last_letter) == false
    puts 'je laatste letter van je dier klopt niet'
    counter += 1
    puts 'je kan nog ' + counter.to_s + ' keer een fout maken'
  else
    puts 'Je dier staat niet in de lijst of is gebruikt'
    counter += 1
    puts 'je kan nog ' + counter.to_s + ' keer een fout maken'
  end

end

puts 'je hebt verloren'
