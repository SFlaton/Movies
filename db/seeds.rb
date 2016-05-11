horror = Category.create(name: "Horror")
action = Category.create(name: "Action")
drama = Category.create(name: "Drama")
fantasy = Category.create(name: "Fantasy")


Movie.create(title: "Dawn of the Dead", description: "Following an ever-growing epidemic of zombies that have risen from the dead, two Philadelphia S.W.A.T. team members, a traffic reporter, and his television executive girlfriend seek refuge in a secluded shopping mall.", year: 1978, category: horror)
Movie.create(title: "Deadpool", description: "A former Special Forces operative turned mercenary is subjected to a rogue experiment that leaves him with accelerated healing powers, adopting the alter ego Deadpool.", year: 2016, category: action)
Movie.create(title: "Titanic", description: "A seventeen-year-old aristocrat falls in love with a kind, but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.", year: 1997, category: drama)
Movie.create(title: "The Hobbit: An Unexpected Journey", description: "A reluctant hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home - and the gold within it - from the dragon Smaug.", year: 2012, category: fantasy)
