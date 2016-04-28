print "Seed standard categories.. "

Category.create([
  { name: "PC Games"},
  { name: "Xbox Games"},
  { name: "Playstation Games"},
  { name: "Board Games"}
  ])

  puts "seeded #{Category.count} categories!"

  
