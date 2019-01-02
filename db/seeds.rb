#Users
User.create!(name: "Admin",
             email: "admin@example.com",
             library_card_number: "12345678901234",
             password: "password",
             password_confirmation: "password",
             admin: true)
             
 User.create!(name: "Adam Murray",
              email: "adam.murray@example.com",
              library_card_number: "11111111111111",
              password: "password",
              password_confirmation: "password")
              
User.create!(name: "Ruby Johnson",
             email: "ruby.johnson@example.com",
             library_card_number: "22222222222222",
             password: "password",
             password_confirmation: "password")
              
User.create!(name: "Sophie Pace",
            email: "sophie.pace@example.com",
            library_card_number: "33333333333333",
            password: "password",
            password_confirmation: "password")              

User.create!(name: "Toby Pearson",
            email: "toby.pearson@example.com",
            library_card_number: "44444444444444",
            password: "password",
            password_confirmation: "password")                 
              
User.create!(name: "Gabriel Ryan",
            email: "gabriel.ryan@example.com",
            library_card_number: "55555555555555",
            password: "password",
            password_confirmation: "password")    
            
User.create!(name: "Bradon Mitchell",
            email: "bradon.mitchell@example.com",
            library_card_number: "66666666666666",
            password: "password",
            password_confirmation: "password")          
              
User.create!(name: "Lara Wells",
            email: "lara.wells@example.com",
            library_card_number: "77777777777777",
            password: "password",
            password_confirmation: "password")   
            
User.create!(name: "John Smith",
            email: "john.smith@example.com",
            library_card_number: "88888888888888",
            password: "password",
            password_confirmation: "password")                
              
# Authors          
Author.create!(name: "Lewis Carroll",
               birth_date: DateTime.strptime("1832", '%Y'),
               death_date: DateTime.strptime("1898", '%Y'))
               
Author.create!(name: "George Orwell",
              birth_date: DateTime.strptime("1903", '%Y'),
              death_date: DateTime.strptime("1950", '%Y'))
              
Author.create!(name: "William Faulkner",
             birth_date: DateTime.strptime("1897", '%Y'),
             death_date: DateTime.strptime("1962", '%Y'))
       
Author.create!(name: "Aldous Huxley",
             birth_date: DateTime.strptime("1894", '%Y'),
             death_date: DateTime.strptime("1963", '%Y'))
           
Author.create!(name: "Voltaire",
             birth_date: DateTime.strptime("1694", '%Y'),
             death_date: DateTime.strptime("1778", '%Y'))
             
Author.create!(name: "Joseph Heller",
             birth_date: DateTime.strptime("1923", '%Y'),
             death_date: DateTime.strptime("1999", '%Y'))
             
Author.create!(name: "Fyodor Dostoyevsky",
             birth_date: DateTime.strptime("1821", '%Y'),
             death_date: DateTime.strptime("1881", '%Y'))
             
Author.create!(name: "Charles Dickens",
             birth_date: DateTime.strptime("1812", '%Y'),
             death_date: DateTime.strptime("1870", '%Y'))
               
Author.create!(name: "Jane Austen",
             birth_date: DateTime.strptime("1775", '%Y'),
             death_date: DateTime.strptime("1817", '%Y'))
             
Author.create!(name: "Johann Wolfgang Vin Goethe",
             birth_date: DateTime.strptime("1749", '%Y'),
             death_date: DateTime.strptime("1832", '%Y'))
             
Author.create!(name: "Mary Shelley",
            birth_date: DateTime.strptime("1797", '%Y'),
            death_date: DateTime.strptime("1851", '%Y'))
            
Author.create!(name: "Jonathen Swift",
             birth_date: DateTime.strptime("1667", '%Y'),
             death_date: DateTime.strptime("1745", '%Y'))
             
Author.create!(name: "William Shakespeare",
            birth_date: DateTime.strptime("1564", '%Y'),
            death_date: DateTime.strptime("1616", '%Y'))
          
Author.create!(name: "Joseph Conrad",
             birth_date: DateTime.strptime("1857", '%Y'),
             death_date: DateTime.strptime("1924", '%Y'))
             
Author.create!(name: "Charlotte Bronte",
            birth_date: DateTime.strptime("1816", '%Y'),
            death_date: DateTime.strptime("1855", '%Y'))
        
Author.create!(name: "William Golding",
            birth_date: DateTime.strptime("1911", '%Y'),
            death_date: DateTime.strptime("1993", '%Y'))
            
Author.create!(name: "George Eliot",
            birth_date: DateTime.strptime("1819", '%Y'),
            death_date: DateTime.strptime("1880", '%Y'))
          
Author.create!(name: "Herman Melville",
            birth_date: DateTime.strptime("1819", '%Y'),
            death_date: DateTime.strptime("1891", '%Y'))
          
Author.create!(name: "Sophocles",
            birth_date: nil,
            death_date: DateTime.strptime("-406", '%Y'))
          
Author.create!(name: "Gabriel Garci'a Ma'rquez",
            birth_date: DateTime.strptime("1927", '%Y'),
            death_date: DateTime.strptime("2014", '%Y'))

Author.create!(name: "Geraldine McCaughrean",
            birth_date: DateTime.strptime("1951", '%Y'),
            death_date: nil)
            
Author.create!(name: "John Milton",
            birth_date: DateTime.strptime("1608", '%Y'),
            death_date: DateTime.strptime("1674", '%Y'))
          
Author.create!(name: "Mark Twain",
            birth_date: DateTime.strptime("1835", '%Y'),
            death_date: DateTime.strptime("1910", '%Y'))
            
Author.create!(name: "Virgil",
            birth_date: DateTime.strptime("-70", '%Y'),
            death_date: DateTime.strptime("-19", '%Y'))
            
Author.create!(name: "Geoffrey Chaucer",
            birth_date: nil,
            death_date: DateTime.strptime("1400", '%Y'))
            
Author.create!(name: "J. D. Salinger",
            birth_date: DateTime.strptime("1919", '%Y'),
            death_date: DateTime.strptime("2010", '%Y'))
            
Author.create!(name: "Dante Alighieri",
            birth_date: DateTime.strptime("1265", '%Y'),
            death_date: DateTime.strptime("1321", '%Y'))      
            
Author.create!(name: "John Steinbeck",
            birth_date: DateTime.strptime("1902", '%Y'),
            death_date: DateTime.strptime("1968", '%Y'))      
            
Author.create!(name: "F. Scott Fitzgerald",
            birth_date: DateTime.strptime("1896", '%Y'),
            death_date: DateTime.strptime("1940", '%Y'))    
            
Author.create!(name: "Homer",
            birth_date: nil,
            death_date: nil)    
            
Author.create!(name: "Ernest Hemingway",
            birth_date: DateTime.strptime("1899", '%Y'),
            death_date: DateTime.strptime("1961", '%Y'))    
            
Author.create!(name: "Stendhal",
            birth_date: DateTime.strptime("1783", '%Y'),
            death_date: DateTime.strptime("1842", '%Y'))    
            
Author.create!(name: "Harper Lee",
            birth_date: DateTime.strptime("1962", '%Y'),
            death_date: DateTime.strptime("2016", '%Y'))    
            
Author.create!(name: "James Joyce",
            birth_date: DateTime.strptime("1882", '%Y'),
            death_date: DateTime.strptime("1941", '%Y'))    
            
Author.create!(name: "Leo Tolstoy",
            birth_date: DateTime.strptime("1826", '%Y'),
            death_date: DateTime.strptime("1910", '%Y'))    
            
Author.create!(name: "Emily Bronte",
            birth_date: DateTime.strptime("1818", '%Y'),
            death_date: DateTime.strptime("1848", '%Y'))  
             
Author.create!(name: "Unknown Author",
            birth_date: nil,
            death_date: nil)
              
#Books 
 Book.create!(title: "The Battle of Austerlitz",
              author: Author.find_by(name: "Unknown Author"),
              isbn: 9781492923824,
              description: "",
              genre: "History",
              picture: File.open(Rails.root + "app/assets/images/books/the_battle_of_austerlitz.jpg"),
              publication_date: DateTime.strptime("2018", '%Y'),
              publisher: "Amazon")
              
Book.create!(title: "Alice's adventures in Wonderland",
             author: Author.find_by(name: "Lewis Carroll"),
             isbn: 9781910646137,
             description: "Lewis Carroll's fantastical tale is an artist's dream. With the complete, unabridged text and glowing full-colour illustrations on almost every page, Alison Jay's vivid interpretation of this classic story is a perfect introduction to the novel - and an elegant gift for those who are already Lewis Carroll fans.",
             genre: "Children's Fiction",
             picture: File.open(Rails.root + "app/assets/images/books/alice's_adventures_in_wonderland.jpg"),
             publication_date: DateTime.strptime("2017", '%Y'),
             publisher: "Old Barn Books")
             
 Book.create!(title: "Animal Farm",
              author: Author.find_by(name: "George Orwell"),
              isbn: 5823132950,
              description: "The York Notes series covers major works from medieval to modern English literature, and classic and contemporary works from Europe, America, the Commonwealth and the Third World.",
              genre: "Political Satire",
              picture: File.open(Rails.root + "app/assets/images/books/animal_farm.jpg"),
              publication_date: DateTime.strptime("1997", '%Y'),
              publisher: "Longman")           
              
Book.create!(title: "As I lay dying",
             author: Author.find_by(name: "William Faulkner"),
             isbn: 9947931100,
             description: "As the desires, fears and rivalries of this family are revealed in the vernacular speech of the South, the author builds up an impression as epic as the Old Testament. This story is one of Faulkner's simplest and considered by many to be a masterpiece.",
             genre: "Modernist Novel",
             picture: File.open(Rails.root + "app/assets/images/books/as_i_lay_dying.jpg"),
             publication_date: DateTime.strptime("1996", '%Y'),
             publisher: "Vintage")             
             
Book.create!(title: "Brave new world",
            author: Author.find_by(name: "Aldous Huxley"),
            isbn: 9781784870140,
            description: "The World Controllers have created the ideal society. Genetic science has brought the human race to perfection. From the Alpha-Plus mandarin class to the Epsilon Semi-Morons, man is bred and educated to be content with his pre-destined role.",
            genre: "Science Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/brave_new_world.jpg"),
            publication_date: DateTime.strptime("2014", '%Y'),
            publisher: "Vintage Classic")            
            
Book.create!(title: "Candide",
            author: Author.find_by(name: "Voltaire"),
            isbn: 9781848372030,
            description: "The eponymous hero and his friends move through a series of tortures, tragedies and reversals of fortune, in the company of Pangloss, a 'metaphysico-theologo-cosmolonigologist' of unflinching optimism.",
            genre: "Satire Novel",
            picture: File.open(Rails.root + "app/assets/images/books/candide.jpg"),
            publication_date: DateTime.strptime("2009", '%Y'),
            publisher: "Arcuturus")       
            
Book.create!(title: "Catch-22",
            author: Author.find_by(name: "Joseph Heller"),
            isbn: 1857152204,
            description: "At the heart of Joseph Heller's bestselling novel is a satirical indictment of military madness and stupidity, and the desire of the ordinary man to survive it. It is the tale of Captain Yossarian who spends his time plotting to survive.",
            genre: "Satire Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/catch-22.jpg"),
            publication_date: DateTime.strptime("1962", '%Y'),
            publisher: "Vintage")   
            
Book.create!(title: "Crime and Punishment",
            author: Author.find_by(name: "Fyodor Dostoyevsky"),
            isbn: 9998190400,
            description: "It is a murder story, told from a murder;s point of view, that implicates even the most innocent reader in its enormities.",
            genre: "Philosophical Novel",
            picture: File.open(Rails.root + "app/assets/images/books/crime_and_punishment.png"),
            publication_date: DateTime.strptime("1999", '%Y'),
            publisher: "Vintage")   
            
Book.create!(title: "David Copperfield",
            author: Author.find_by(name: "Charles Dickens"),
            isbn: 1404394470,
            description: "David Copperfield draws openly on Dickens' own experiences in childhood and in his vocation as a successful novelist, reflecting his relationship with his father.",
            genre: "Novel",
            picture: File.open(Rails.root + "app/assets/images/books/david_copperfield.jpg"),
            publication_date: DateTime.strptime("2004", '%Y'),
            publisher: "Penguin Books")   
            
Book.create!(title: "Emma",
            author: Author.find_by(name: "Jane Austen"),
            isbn: 9781407172668,
            description: "Emma Woodhouse is one of Austen's most captivating and vivid characters. Beautiful, spoilt, vain and irrepressibly witty, Emma organises the lives of the inhabitants of her sleepy little village and plays matchmaker with devastating effect.",
            genre: "Novel",
            picture: File.open(Rails.root + "app/assets/images/books/emma.jpg"),
            publication_date: DateTime.strptime("2017", '%Y'),
            publisher: "Scholastic")   
            
Book.create!(title: "Faust",
            author: Author.find_by(name: "Johann Wolfgang Vin Goethe"),
            isbn: 11990058436,
            description: "",
            genre: "Philosophical Novel",
            picture: File.open(Rails.root + "app/assets/images/books/faust.jpg"),
            publication_date: DateTime.strptime("1926", '%Y'),
            publisher: "DENT")   
          
Book.create!(title: "Frankenstein",
            author: Author.find_by(name: "Mary Shelley"),
            isbn: 9780008182199,
            description: "Written when Mary Shelley was only 19 years old, this chilling tale of a young scientist's desire to create life still resonates today. Victor Frankenstein's monster is stitched together from the stolen limbs of the dead, and the result is a grotesque being who, rejected by his maker, sets out on a journey to wreak his revenge. In the most famous gothic horror story ever told, Shelley confronts the limitations of science, the nature of human cruelty and the pathway to forgiveness with rich language and evocative imagery.",
            genre: "Science Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/frankenstein.jpg"),
            publication_date: DateTime.strptime("2016", '%Y'),
            publisher: "William Collins")   
            
Book.create!(title: "Great expectations",
            author: Author.find_by(name: "Charles Dickens"),
            isbn: 9781407172545,
            description: "One of Dickens's greatest novels, 'Great Expectations' is also one of his most autobiographical stories, as the young protagonist Pip escapes from his troubled childhood experiences to learn for himself the perils of love, the dangers of wealth, and how to sort his friends from his enemies.",
            genre: "Classic Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/great_expectations.jpg"),
            publication_date: DateTime.strptime("2017", '%Y'),
            publisher: "Scholastic")   
            
Book.create!(title: "Gulliver's travels",
            author: Author.find_by(name: "Jonathen Swift"),
            isbn: 9781444821864,
            description: "Gulliver's Travels' describes the shipwrecked Gulliver's encounters with the inhabitants of four extraordinary places: Lilliput, Brobdingnag, Laputa, and the country of the Houyhnhnms.",
            genre: "Travel Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/gulliver's_travels.jpg"),
            publication_date: DateTime.strptime("2014", '%Y'),
            publisher: "Olverscroft")   
            
Book.create!(title: "Hamlet",
            author: Author.find_by(name: "William Shakespeare"),
            isbn: 9780521618748,
            description: "The Tragedy of Hamlet, Prince of Denmark, or more simply Hamlet, is a tragedy by William Shakespeare, believed to have been written between 1599 and 1601.",
            genre: "Play",
            picture: File.open(Rails.root + "app/assets/images/books/hamlet.jpg"),
            publication_date: DateTime.strptime("2005", '%Y'),
            publisher: "Cambridge University Press")   
            
Book.create!(title: "Heart of Darkness",
            author: Author.find_by(name: "Joseph Conrad"),
            isbn: 9781444809305,
            description: "On board the British ship the Nellie, Marlow told a group of men his story. He told them of his strange, eventful, yet horrific journey into Africa as an agent for the Company, which traded in ivory. He also finally learned the truth about Kurtz, a mad, mysterious agent.",
            genre: "Novella",
            picture: File.open(Rails.root + "app/assets/images/books/heart_of_darkness.jpg"),
            publication_date: DateTime.strptime("2011", '%Y'),
            publisher: "Ulverscroft")   
            
Book.create!(title: "Jane Eyre",
            author: Author.find_by(name: "Charlotte Bronte"),
            isbn: 9780571337095,
            description: "Plain' orphan Jane Eyre is not expected to amount to much. A pleasant existence as a governess is all she is supposed to hope for - but Jane desperately wants more. And an appointment at the gothic mansion of Thornfield offers her more than she could ever dream of - including a chance at real love. But when tragedy strikes, she will have to use all her bravery, spirit and resolve to overcome her supposed fate, and forge her own destiny. This classic novel challenges conventions of desire, family, class and just how much of our identity we are willing to give up for those we love.",
            genre: "Novel",
            picture: File.open(Rails.root + "app/assets/images/books/jane_eyre.jpg"),
            publication_date: DateTime.strptime("2017", '%Y'),
            publisher: "Faber & Faber")   
            
Book.create!(title: "Lord of the flies",
            author: Author.find_by(name: "William Golding"),
            isbn: 9780571273577,
            description: "A plane crashes on a desert island and the only survivors, a group of schoolboys, assemble on the beach and wait to be rescued. By day they inhabit a land of bright fantastic birds and dark blue seas, but at night their dreams are haunted by the image of a terrifying beast.",
            genre: "Novel",
            picture: File.open(Rails.root + "app/assets/images/books/lord_of_the_flies.jpg"),
            publication_date: DateTime.strptime("2011", '%Y'),
            publisher: "Faber & Faber")   
            
Book.create!(title: "Middlemarch",
            author: Author.find_by(name: "George Eliot"),
            isbn: 9780099516231,
            description: "In 'Middlemarch', George Eliot fashions a concept of life and society free of the dogma of the past yet able to confront the scepticism of the age.",
            genre: "General Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/middlemarch.jpg"),
            publication_date: DateTime.strptime("2007", '%Y'),
            publisher: "Vintage Classic")   
            
Book.create!(title: "Moby Dick",
            author: Author.find_by(name: "Herman Melville"),
            isbn: 9781904633778,
            description: "",
            genre: "Adventure Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/moby_dick.jpg"),
            publication_date: DateTime.strptime("2004", '%Y'),
            publisher: "Collector's Library")   
            
Book.create!(title: "Nineteen Eighty-Four",
            author: Author.find_by(name: "George Orwell"),
            isbn: 14118776110,
            description: "",
            genre: "Political Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/nineteen_eighty-four.jpg"),
            publication_date: DateTime.strptime("1954", '%Y'),
            publisher: "Penguin Books")   
            
Book.create!(title: "Oedipus the king",
            author: Author.find_by(name: "Sophocles"),
            isbn: 9780713686760,
            description: "Since it was first performed in Athens in the 420s B.C., 'Oedipus the King' has widely been regarded as Sophocles' greatest tragedy and one of the foundation stones of Western drama. This edition features full commentary, notes and questions for further study.",
            genre: "Play",
            picture: File.open(Rails.root + "app/assets/images/books/oedipus_the_king.jpg"),
            publication_date: DateTime.strptime("2008", '%Y'),
            publisher: "Methuen Drama")   
            
Book.create!(title: "One hundred years of solitude",
            author: Author.find_by(name: "Gabriel Garci'a Ma'rquez"),
            isbn: 9780241968581,
            description: "In the book which put South America on the literary map, Ma´rquez tells the haunting story of a community in which the political, the personal and the spiritual worlds intertwine.",
            genre: "Spanish Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/one_hundred_years_of_solitude.jpg"),
            publication_date: DateTime.strptime("2014", '%Y'),
            publisher: "Penguin Books")   
            
Book.create!(title: "One thousand and one Arabian nights",
            author: Author.find_by(name: "Geraldine McCaughrean"),
            isbn: 1927501350,
            description: "Written in a clear, poetic style, this highly-praised version of the Arabian Nights includes many stories that have never before appeared in a collection for children.",
            genre: "Folk Stories",
            picture: File.open(Rails.root + "app/assets/images/books/one_thousand_and_one_arabian_nights.jpg"),
            publication_date: DateTime.strptime("1999", '%Y'),
            publisher: "Oxford University Press")   
            
Book.create!(title: "Paradise Lost",
            author: Author.find_by(name: "John Milton"),
            isbn: 9781471247163,
            description: "Satan is out for revenge. His rebellion has failed, he has been cast out from heaven & is doomed to spend eternity in hell. Somehow he must find a way to prove his power & wound his enemies. He fixes upon Gods beloved new creations, Adam & Eve, as the vehicles of his vengeance.",
            genre: "Epic Poetry",
            picture: File.open(Rails.root + "app/assets/images/books/paradise_lost.jpg"),
            publication_date: DateTime.strptime("2013", '%Y'),
            publisher: "Clipper Large Print") 
            
Book.create!(title: "Pride and prejudice",
            author: Author.find_by(name: "Jane Austen"),
            isbn: 9781407158518,
            description: "Elizabeth Bennet finds her neighbour Fitzwilliam Darcy arrogant and conceited. The fact that he has meddled in the romantic relationship between her sister Jane and local aristocrat Charles Bingley makes him still more detestable. Darcy however is charmed by Elizabeth's wit and beauty, and has set his sight on her hand in marriage. Will Elizabeth's pride prevail?",
            genre: "General Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/pride_and_prejudice.jpg"),
            publication_date: DateTime.strptime("2015", '%Y'),
            publisher: "Scholastic") 
            
Book.create!(title: "The adventures of Huckleberry Finn",
            author: Author.find_by(name: "Mark Twain"),
            isbn: 9780192746917,
            description: "In this timeless classic, join Huck and Jim as they encounter a wrecked steamship full of thieves, a fake duke and king, and two families locked in an epic feud.",
            genre: "Children's Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/the_adventures_of_huckleberry_finn.jpg"),
            publication_date: DateTime.strptime("2016", '%Y'),
            publisher: "Oxford University Press") 
          
Book.create!(title: "The Aeneid",
            author: Author.find_by(name: "Virgil"),
            isbn: 1857150856,
            description: "The Aeneid (/ɪˈniːɪd/; Latin: Aeneis [ae̯ˈneːɪs]) is a Latin epic poem, written by Virgil between 29 and 19 BC,[1] that tells the legendary story of Aeneas, a Trojan who travelled to Italy, where he became the ancestor of the Romans. It comprises 9,896 lines in dactylic hexameter.[2] The first six of the poem's twelve books tell the story of Aeneas's wanderings from Troy to Italy, and the poem's second half tells of the Trojans' ultimately victorious war upon the Latins, under whose name Aeneas and his Trojan followers are destined to be subsumed.",
            genre: "Epic Poetry",
            picture: File.open(Rails.root + "app/assets/images/books/the_aeneid.jpg"),
            publication_date: DateTime.strptime("1992", '%Y'),
            publisher: "Everyman") 
            
Book.create!(title: "The Canterbury Tales",
            author: Author.find_by(name: "Geoffrey Chaucer"),
            isbn: 5210803390,
            description: "The Canterbury Tales (Middle English: Tales of Caunterbury[2]) is a collection of 24 stories that runs to over 17,000 lines written in Middle English by Geoffrey Chaucer between 1387 and 1400.[3] In 1386, Chaucer became Controller of Customs and Justice of Peace and, in 1389, Clerk of the King's work.[4] It was during these years that Chaucer began working on his most famous text, The Canterbury Tales. The tales (mostly written in verse, although some are in prose) are presented as part of a story-telling contest by a group of pilgrims as they travel together on a journey from London to Canterbury to visit the shrine of Saint Thomas Becket at Canterbury Cathedral. The prize for this contest is a free meal at the Tabard Inn at Southwark on their return.",
            genre: "English Poetry",
            picture: File.open(Rails.root + "app/assets/images/books/the_canterbury_tales.jpg"),
            publication_date: DateTime.strptime("1971", '%Y'),
            publisher: "Cambridge University Press") 
            
Book.create!(title: "The catcher in the rye",
            author: Author.find_by(name: "J. D. Salinger"),
            isbn: 14023750110,
            description: "Reproduces for the first time the original American text.",
            genre: "Realistic Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/the_catcher_in_the_rye.jpg"),
            publication_date: DateTime.strptime("1994", '%Y'),
            publisher: "Penguin Books") 
            
Book.create!(title: "The Divine Comedy",
            author: Author.find_by(name: "Dante Alighieri"),
            isbn: 1857151836,
            description: "Includes all three parts of Dante's poem about the journey of the soul - INFERNO, PURGATORIO, and PARADISO.",
            genre: "Italian Poetry",
            picture: File.open(Rails.root + "app/assets/images/books/the_divine_comedy.jpg"),
            publication_date: DateTime.strptime("1995", '%Y'),
            publisher: "Everyman") 
            
Book.create!(title: "The grapes of wrath",
            author: Author.find_by(name: "John Steinbeck"),
            isbn: 9780241952474,
            description: "Shocking and controversial when it was first published in 1939, Steinbeck's Pulitzer prize-winning epic remains his undisputed masterpiece. It tells of the Joad family who travel West in search of the promised land, and find only broken dreams.",
            genre: "Novel",
            picture: File.open(Rails.root + "app/assets/images/books/the_grapes_of_wrath.jpg"),
            publication_date: DateTime.strptime("2012", '%Y'),
            publisher: "Viking") 
            
Book.create!(title: "The great Gatsby",
            author: Author.find_by(name: "F. Scott Fitzgerald"),
            isbn: 9781409147442,
            description: "A social satire and a milestone in 20th century literature, 'The Great Gatsby' peels away the layers of the glamorous twenties in the U.S. to display the coldness and cruelty at its heart.",
            genre: "General Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/the_great_gatsby.jpg"),
            publication_date: DateTime.strptime("2013", '%Y'),
            publisher: "Orion") 
            
Book.create!(title: "The Iliad",
            author: Author.find_by(name: "Homer"),
            isbn: 9781784870560,
            description: "High on Olympus, Zeus and the assembled deities look down on the world of men, to the city of Troy where a bitter and bloody war has dragged into its 10th year, and a quarrel rages between a legendary warrior and his commander. Greek ships decay, men languish, exhausted, and behind the walls of Troy a desperate people await the next turn of fate. This is the 'Iliad': an ancient story of enduring power; magnetic characters defined by stirring and momentous speeches; a panorama of human lives locked in a heroic struggle beneath a mischievous or indifferent heaven. But, above all, it is a tale of the devastation, waste and pity of war.",
            genre: "Epic Poetry",
            picture: File.open(Rails.root + "app/assets/images/books/the_iliad.jpg"),
            publication_date: DateTime.strptime("2015", '%Y'),
            publisher: "Vintage") 
            
Book.create!(title: "The Odyssey",
            author: Author.find_by(name: "Homer"),
            isbn: 9780393089059,
            description: "The first great adventure story in the Western canon, 'The Odyssey' is a poem about violence and the aftermath of war; about wealth, poverty and power; about marriage, family and identity; and about travellers, hospitality and the changing meanings of home in a strange world. This vivid new translation matches the number of lines in the Greek original, striding at Homer's sprightly pace.",
            genre: "Epic Poetry",
            picture: File.open(Rails.root + "app/assets/images/books/the_odyssey.jpg"),
            publication_date: DateTime.strptime("2017", '%Y'),
            publisher: "W. W. Norton and Company") 
            
Book.create!(title: "The old man and the sea",
            author: Author.find_by(name: "Ernest Hemingway"),
            isbn: 9990840900,
            description: "The Old Man and the Sea is a short novel written by the American author Ernest Hemingway in 1951 in Cuba, and published in 1952.[1] It was the last major work of fiction by Hemingway that was published during his lifetime. One of his most famous works, it tells the story of Santiago, an aging Cuban fisherman who struggles with a giant marlin far out in the Gulf Stream off the coast of Cuba.[2]",
            genre: "Literary Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/the_old_man_and_the_sea.jpg"),
            publication_date: DateTime.strptime("1994", '%Y'),
            publisher: "Arrow") 
            
Book.create!(title: "The red and the black",
            author: Author.find_by(name: "Stendhal"),
            isbn: 9780140447644,
            description: "The Red and the Black', one of the great French novels of the 19th century, follows the rise and fall of the young, provincial Julien Sorel in the France of the Restoration. Stendhal's prose is noted for the passion of his principal characters.",
            genre: "Adventure Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/the_red_and_the_black.jpg"),
            publication_date: DateTime.strptime("2002", '%Y'),
            publisher: "Penguin Books") 
            
Book.create!(title: "The sound and the fury",
            author: Author.find_by(name: "William Faulkner"),
            isbn: 1857150694,
            description: "The Red and the Black', one of the great French novels of the 19th century, follows the rise and fall of the young, provincial Julien Sorel in the France of the Restoration. Stendhal's prose is noted for the passion of his principal characters.",
            genre: "Modernist Novel",
            picture: File.open(Rails.root + "app/assets/images/books/the_sound_and_the_fury.jpg"),
            publication_date: DateTime.strptime("1992", '%Y'),
            publisher: "Everyman") 
            
Book.create!(title: "To kill a mockingbird",
            author: Author.find_by(name: "Harper Lee"),
            isbn: 9781784870799,
            description: "Shoot all the bluejays you want, if you can hit 'em, but remember it's a sin to kill a mockingbird'. This is a lawyer's advice to his children as he defends the real mockingbird of the story - a black man charged with raping a white girl in the 30s.",
            genre: "Novel",
            picture: File.open(Rails.root + "app/assets/images/books/to_kill_a_mockingbird.jpg"),
            publication_date: DateTime.strptime("2015", '%Y'),
            publisher: "Vintage Books") 
            
Book.create!(title: "Ulysses",
            author: Author.find_by(name: "James Joyce"),
            isbn: 9780199535675,
            description: "The text of Ulysses is loosely based upon the Odyssey and deals with events that occurred one day in Dublin in 1904, the anniversary of Joyce's walk with Nora Barnacle.",
            genre: "General Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/ulysses.jpg"),
            publication_date: DateTime.strptime("2008", '%Y'),
            publisher: "Oxford University Press") 
            
Book.create!(title: "War and Peace",
            author: Author.find_by(name: "Leo Tolstoy"),
            isbn: 9780099512233,
            description: "The novel chronicles the history of the French invasion of Russia and the impact of the Napoleonic era on Tsarist society through the stories of five Russian aristocratic families. Portions of an earlier version, titled The Year 1805,[4] were serialized in The Russian Messenger from 1865 to 1867. The novel was first published in its entirety in 1869.[5]",
            genre: "Historical Novel",
            picture: File.open(Rails.root + "app/assets/images/books/war_and_peace.jpg"),
            publication_date: DateTime.strptime("1993", '%Y'),
            publisher: "Barnes & Noble")
            
Book.create!(title: "Wuthering Heights",
            author: Author.find_by(name: "Emily Bronte"),
            isbn: 9780571337118,
            description: "The novel chronicles the history of the French invasion of Russia and the impact of the Napoleonic era on Tsarist society through the stories of five Russian aristocratic families. Portions of an earlier version, titled The Year 1805,[4] were serialized in The Russian Messenger from 1865 to 1867. The novel was first published in its entirety in 1869.[5]",
            genre: "Teen Fiction",
            picture: File.open(Rails.root + "app/assets/images/books/wuthering_heights.jpg"),
            publication_date: DateTime.strptime("2017", '%Y'),
            publisher: "Faber & Faber") 


books = Book.order(:created_at)
3.times do
  books.each { |book| book.book_copies.create! }
end

#Borrowing relationships
User.find_by(name: "Adam Murray").borrow(Book.find_by(title: "David Copperfield").book_copies[0])
User.find_by(name: "Adam Murray").borrow(Book.find_by(title: "Animal Farm").book_copies[0])
User.find_by(name: "Ruby Johnson").borrow(Book.find_by(title: "Lord of the flies").book_copies[0])
User.find_by(name: "Ruby Johnson").borrow(Book.find_by(title: "Wuthering Heights").book_copies[0])
User.find_by(name: "Ruby Johnson").borrow(Book.find_by(title: "Catch-22").book_copies[0])
User.find_by(name: "Sophie Pace").borrow(Book.find_by(title: "War and Peace").book_copies[0])
User.find_by(name: "Toby Pearson").borrow(Book.find_by(title: "Alice's adventures in Wonderland").book_copies[0])
User.find_by(name: "Gabriel Ryan").borrow(Book.find_by(title: "The Canterbury Tales").book_copies[0])
User.find_by(name: "Bradon Mitchell").borrow(Book.find_by(title: "Emma").book_copies[0])
User.find_by(name: "Bradon Mitchell").borrow(Book.find_by(title: "Animal Farm").book_copies[1])
User.find_by(name: "Adam Murray").borrow(Book.find_by(title: "Great expectations").book_copies[0])
User.find_by(name: "Lara Wells").borrow(Book.find_by(title: "Jane Eyre").book_copies[0])
User.find_by(name: "Sophie Pace").borrow(Book.find_by(title: "Frankenstein").book_copies[0])
User.find_by(name: "Sophie Pace").borrow(Book.find_by(title: "Brave new world").book_copies[0])
User.find_by(name: "Toby Pearson").borrow(Book.find_by(title: "The Iliad").book_copies[0])
User.find_by(name: "Toby Pearson").borrow(Book.find_by(title: "Hamlet").book_copies[0])
User.find_by(name: "Sophie Pace").borrow(Book.find_by(title: "Faust").book_copies[0])
User.find_by(name: "Adam Murray").borrow(Book.find_by(title: "The Aeneid").book_copies[0])
User.find_by(name: "Bradon Mitchell").borrow(Book.find_by(title: "The Odyssey").book_copies[0])
User.find_by(name: "Gabriel Ryan").borrow(Book.find_by(title: "The grapes of wrath").book_copies[0])
User.find_by(name: "John Smith").borrow(Book.find_by(title: "Moby Dick").book_copies[0])

#Reserving relationships
User.find_by(name: "Adam Murray").reserve(Book.find_by(title: "One thousand and one Arabian nights").book_copies[0])
User.find_by(name: "Adam Murray").reserve(Book.find_by(title: "War and Peace").book_copies[1])
User.find_by(name: "Ruby Johnson").reserve(Book.find_by(title: "The grapes of wrath").book_copies[1])
User.find_by(name: "Ruby Johnson").reserve(Book.find_by(title: "Emma").book_copies[1])
User.find_by(name: "Ruby Johnson").reserve(Book.find_by(title: "Middlemarch").book_copies[0])
User.find_by(name: "Sophie Pace").reserve(Book.find_by(title: "Paradise Lost").book_copies[0])
User.find_by(name: "Toby Pearson").reserve(Book.find_by(title: "Animal Farm").book_copies[2])
User.find_by(name: "Gabriel Ryan").reserve(Book.find_by(title: "Wuthering Heights").book_copies[1])
User.find_by(name: "Bradon Mitchell").reserve(Book.find_by(title: "The grapes of wrath").book_copies[2])
User.find_by(name: "Bradon Mitchell").reserve(Book.find_by(title: "Brave new world").book_copies[1])
User.find_by(name: "Adam Murray").reserve(Book.find_by(title: "As I lay dying").book_copies[0])
User.find_by(name: "Lara Wells").reserve(Book.find_by(title: "One thousand and one Arabian nights").book_copies[1])
User.find_by(name: "Sophie Pace").reserve(Book.find_by(title: "Great expectations").book_copies[1])
User.find_by(name: "Sophie Pace").reserve(Book.find_by(title: "The sound and the fury").book_copies[0])
User.find_by(name: "Toby Pearson").reserve(Book.find_by(title: "Ulysses").book_copies[0])
User.find_by(name: "Toby Pearson").reserve(Book.find_by(title: "Nineteen Eighty-Four").book_copies[0])
User.find_by(name: "Sophie Pace").reserve(Book.find_by(title: "Heart of Darkness").book_copies[0])
User.find_by(name: "Adam Murray").reserve(Book.find_by(title: "Lord of the flies").book_copies[1])
User.find_by(name: "Bradon Mitchell").reserve(Book.find_by(title: "Candide").book_copies[0])
User.find_by(name: "Gabriel Ryan").reserve(Book.find_by(title: "Faust").book_copies[1])