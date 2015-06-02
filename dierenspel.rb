dieren = ['aal','aap','adder','alligator','anaconda','ansjovis','antilope','arend','atalanta','baviaan','bedwant','beer',
'bever','big','bij','bizon','bloedzuiger','boa','bok','bosuil','buizerd','bultrug','bunzing','chimpansee','citroenvlinder',
'cobra','coyote','dagpauwoog','das','dolfijn','dromedaris','duif','dwerguil','eekhoorn','eend','egel','ekster','eland','ezel',
'fazant','flamingo','fret','fuut','gans','gazelle','geit','gekko','gerbil','gier','giraffe','gnoe','gorilla','grizzlybeer',
'haai','haas','hagedis','hamerhaai','hamster','havik','hermelijn','hert','hoen','hommel','hond','hooiwagen','huismus',
'huisspin','hyena','ijsbeer','ijsvogel','jacktluipaard','jaguar','jakhals','kaaiman','kabeljauw','kameel','kameleon','kangoeroe',
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

while counter < 3

  puts 'kies je dier'
  dier = gets.chomp

  if dieren.include?(dier) and used.include?(dier) == false
    puts 'Jij koos voor ' + dier
    used.push dier
  else
    puts 'Je dier staat niet in de lijst of is gebruikt'
    counter += 1
    puts counter
  end
end

puts 'je hebt verloren'

last_animal = dier
last_letter = last_animal.split("").last
