/*4. Which directors have the highest number of highly-rated movies (min 3 movies, rating > 8)?
 What: Join director names to movies, filter on rating > 8, count how many high-rated movies per director.
 Why: Highlights consistently successful directors */
SELECT name_basics.primaryname AS director_name,
    COUNT(title_basics.primarytitle) AS no_of_movies
FROM title_crew
    JOIN title_basics ON title_crew.tconst = title_basics.tconst
    JOIN title_ratings ON title_crew.tconst = title_ratings.tconst
    JOIN LATERAL unnest(string_to_array(title_crew.directors, ',')) AS director_id ON true
    JOIN name_basics ON name_basics.nconst = director_id
WHERE title_basics.titletype = 'movie'
    AND title_basics.isadult = FALSE
    AND title_ratings.averagerating > 8
GROUP BY name_basics.primaryname
HAVING COUNT(title_basics.primarytitle) > 3
ORDER BY no_of_movies DESC;
/*
 Results:
 [
 {
 "director_name": "Dylan Verrechia",
 "no_of_movies": "29"
 },
 {
 "director_name": "Sergey A.",
 "no_of_movies": "27"
 },
 {
 "director_name": "Alonso O. Lara",
 "no_of_movies": "25"
 },
 {
 "director_name": "René Vautier",
 "no_of_movies": "23"
 },
 {
 "director_name": "Dasari Narayana Rao",
 "no_of_movies": "19"
 },
 {
 "director_name": "Claudio Costa",
 "no_of_movies": "18"
 },
 {
 "director_name": "Y.R. Swamy",
 "no_of_movies": "17"
 },
 {
 "director_name": "S.R. Puttana Kanagal",
 "no_of_movies": "16"
 },
 {
 "director_name": "Tom Logan",
 "no_of_movies": "15"
 },
 {
 "director_name": "S.K. Bhagavan",
 "no_of_movies": "15"
 },
 {
 "director_name": "Rajiv Chilaka",
 "no_of_movies": "14"
 },
 {
 "director_name": "Sibtain Fazli",
 "no_of_movies": "14"
 },
 {
 "director_name": "Mariano Alvarez",
 "no_of_movies": "14"
 },
 {
 "director_name": "Singeetam Srinivasa Rao",
 "no_of_movies": "13"
 },
 {
 "director_name": "Larry Rosen",
 "no_of_movies": "13"
 },
 {
 "director_name": "Vijay",
 "no_of_movies": "13"
 },
 {
 "director_name": "Satyajit Ray",
 "no_of_movies": "12"
 },
 {
 "director_name": "Prince Oak Oakleyski",
 "no_of_movies": "12"
 },
 {
 "director_name": "K. Viswanath",
 "no_of_movies": "12"
 },
 {
 "director_name": "B. Dorai Raj",
 "no_of_movies": "12"
 },
 {
 "director_name": "Chris D. Nebe",
 "no_of_movies": "11"
 },
 {
 "director_name": "Tarun Majumdar",
 "no_of_movies": "11"
 },
 {
 "director_name": "Clive Christopher",
 "no_of_movies": "11"
 },
 {
 "director_name": "T.V. Singh Thakore",
 "no_of_movies": "11"
 },
 {
 "director_name": "B. Ramakrishnaiah Panthulu",
 "no_of_movies": "10"
 },
 {
 "director_name": "S.F. Hasnain",
 "no_of_movies": "10"
 },
 {
 "director_name": "Martin Scorsese",
 "no_of_movies": "10"
 },
 {
 "director_name": "Marco Romano",
 "no_of_movies": "10"
 },
 {
 "director_name": "Mani Ratnam",
 "no_of_movies": "10"
 },
 {
 "director_name": "Paul Dugdale",
 "no_of_movies": "10"
 },
 {
 "director_name": "I. Kolyada",
 "no_of_movies": "10"
 },
 {
 "director_name": "Ertem Egilmez",
 "no_of_movies": "10"
 },
 {
 "director_name": "Park Jun-soo",
 "no_of_movies": "9"
 },
 {
 "director_name": "Jeremy Norrie",
 "no_of_movies": "9"
 },
 {
 "director_name": "Alex Fegan",
 "no_of_movies": "9"
 },
 {
 "director_name": "Rajdutt",
 "no_of_movies": "9"
 },
 {
 "director_name": "Tapan Sinha",
 "no_of_movies": "9"
 },
 {
 "director_name": "Pauli Janhunen Calderón",
 "no_of_movies": "9"
 },
 {
 "director_name": "K.S.R. Das",
 "no_of_movies": "8"
 },
 {
 "director_name": "Ranga B.S.",
 "no_of_movies": "8"
 },
 {
 "director_name": "Vyacheslav Bihun",
 "no_of_movies": "8"
 },
 {
 "director_name": "Jamil Sulong",
 "no_of_movies": "8"
 },
 {
 "director_name": "Sudhanshu Sahu",
 "no_of_movies": "8"
 },
 {
 "director_name": "Nabwana I.G.G.",
 "no_of_movies": "8"
 },
 {
 "director_name": "Nick Nanton",
 "no_of_movies": "8"
 },
 {
 "director_name": "Anand Patwardhan",
 "no_of_movies": "8"
 },
 {
 "director_name": "Connie Field",
 "no_of_movies": "8"
 },
 {
 "director_name": "Christopher Nolan",
 "no_of_movies": "8"
 },
 {
 "director_name": "Rui Constantino",
 "no_of_movies": "8"
 },
 {
 "director_name": "Siddalingaiah",
 "no_of_movies": "8"
 },
 {
 "director_name": "Cathy Jones",
 "no_of_movies": "8"
 },
 {
 "director_name": "Oh Yoon-dong",
 "no_of_movies": "8"
 },
 {
 "director_name": "Peter Mortimer",
 "no_of_movies": "8"
 },
 {
 "director_name": "Akira Kurosawa",
 "no_of_movies": "8"
 },
 {
 "director_name": "Roger Lay Jr.",
 "no_of_movies": "8"
 },
 {
 "director_name": "Dinesh Chaudhary",
 "no_of_movies": "8"
 },
 {
 "director_name": "Munin Barua",
 "no_of_movies": "8"
 },
 {
 "director_name": "Kadiri Venkata Reddy",
 "no_of_movies": "8"
 },
 {
 "director_name": "Hunsur Krishnamurthy",
 "no_of_movies": "8"
 },
 {
 "director_name": "Tanvir Mokammel",
 "no_of_movies": "7"
 },
 {
 "director_name": "Ila Bêka",
 "no_of_movies": "7"
 },
 {
 "director_name": "Bapu",
 "no_of_movies": "7"
 },
 {
 "director_name": "Jabbar Patel",
 "no_of_movies": "7"
 },
 {
 "director_name": "Javier Cruz Jr.",
 "no_of_movies": "7"
 },
 {
 "director_name": "Jean-Pierre Ponnelle",
 "no_of_movies": "7"
 },
 {
 "director_name": "Louise Lemoine",
 "no_of_movies": "7"
 },
 {
 "director_name": "Kayode Kasum",
 "no_of_movies": "7"
 },
 {
 "director_name": "Kamalakara Kameshwara Rao",
 "no_of_movies": "7"
 },
 {
 "director_name": "K. Balachander",
 "no_of_movies": "7"
 },
 {
 "director_name": "K.S.L. Swamy",
 "no_of_movies": "7"
 },
 {
 "director_name": "Steven Spielberg",
 "no_of_movies": "7"
 },
 {
 "director_name": "Stanley Kubrick",
 "no_of_movies": "7"
 },
 {
 "director_name": "Celso Ad. Castillo",
 "no_of_movies": "7"
 },
 {
 "director_name": "V. Madhusudan Rao",
 "no_of_movies": "7"
 },
 {
 "director_name": "Damjan Kozole",
 "no_of_movies": "7"
 },
 {
 "director_name": "Anant Mane",
 "no_of_movies": "7"
 },
 {
 "director_name": "Umberto Baccolo",
 "no_of_movies": "7"
 },
 {
 "director_name": "S. Narayan",
 "no_of_movies": "7"
 },
 {
 "director_name": "Ross MacGibbon",
 "no_of_movies": "7"
 },
 {
 "director_name": "Ajoy Kar",
 "no_of_movies": "7"
 },
 {
 "director_name": "Frank Zamacona",
 "no_of_movies": "7"
 },
 {
 "director_name": "Pavol Barabas",
 "no_of_movies": "7"
 },
 {
 "director_name": "Tim Gray",
 "no_of_movies": "7"
 },
 {
 "director_name": "P. Ramlee",
 "no_of_movies": "7"
 },
 {
 "director_name": "Girish Kasaravalli",
 "no_of_movies": "7"
 },
 {
 "director_name": "Natalie Wynn",
 "no_of_movies": "7"
 },
 {
 "director_name": "N.T. Rama Rao",
 "no_of_movies": "7"
 },
 {
 "director_name": "Tapas Sargharia",
 "no_of_movies": "7"
 },
 {
 "director_name": "V. Somasekhar",
 "no_of_movies": "6"
 },
 {
 "director_name": "Charles Chaplin",
 "no_of_movies": "6"
 },
 {
 "director_name": "Simran S Kaler",
 "no_of_movies": "6"
 },
 {
 "director_name": "Winfried Junge",
 "no_of_movies": "6"
 },
 {
 "director_name": "Sivaram Peketi",
 "no_of_movies": "6"
 },
 {
 "director_name": "Eduardo Coutinho",
 "no_of_movies": "6"
 },
 {
 "director_name": "Edwin Brienen",
 "no_of_movies": "6"
 },
 {
 "director_name": "Billy Wilder",
 "no_of_movies": "6"
 },
 {
 "director_name": "A.V. Seshagiri Rao",
 "no_of_movies": "6"
 },
 {
 "director_name": "Sushant Mani",
 "no_of_movies": "6"
 },
 {
 "director_name": "T.S. Nagabharana",
 "no_of_movies": "6"
 },
 {
 "director_name": "Kajirô Yamamoto",
 "no_of_movies": "6"
 },
 {
 "director_name": "R. Ramamurthy",
 "no_of_movies": "6"
 },
 {
 "director_name": "Quentin Tarantino",
 "no_of_movies": "6"
 },
 {
 "director_name": "Priyadarshan",
 "no_of_movies": "6"
 },
 {
 "director_name": "Tim Van Someren",
 "no_of_movies": "6"
 },
 {
 "director_name": "John Watson",
 "no_of_movies": "6"
 },
 {
 "director_name": "Piro Milkani",
 "no_of_movies": "6"
 },
 {
 "director_name": "Nicholas Hytner",
 "no_of_movies": "6"
 },
 {
 "director_name": "Lino Brocka",
 "no_of_movies": "6"
 },
 {
 "director_name": "Miguel Gaudêncio",
 "no_of_movies": "6"
 },
 {
 "director_name": "Peter Miller",
 "no_of_movies": "6"
 },
 {
 "director_name": "G.V. Iyer",
 "no_of_movies": "6"
 },
 {
 "director_name": "Maryo J. de los Reyes",
 "no_of_movies": "6"
 },
 {
 "director_name": "Ishirô Honda",
 "no_of_movies": "6"
 },
 {
 "director_name": "Lisandro Boccacci",
 "no_of_movies": "6"
 },
 {
 "director_name": "Tex Avery",
 "no_of_movies": "6"
 },
 {
 "director_name": "Luca Guardabascio",
 "no_of_movies": "6"
 },
 {
 "director_name": "Jason Croot",
 "no_of_movies": "6"
 },
 {
 "director_name": "P. Sheshadri",
 "no_of_movies": "6"
 },
 {
 "director_name": "Mark Christopher Lee",
 "no_of_movies": "6"
 },
 {
 "director_name": "Balu Mahendra",
 "no_of_movies": "6"
 },
 {
 "director_name": "Mohan Gandhi",
 "no_of_movies": "6"
 },
 {
 "director_name": "Alfred Hitchcock",
 "no_of_movies": "6"
 },
 {
 "director_name": "Nick Wickham",
 "no_of_movies": "6"
 },
 {
 "director_name": "Aruru Pattabhi",
 "no_of_movies": "6"
 },
 {
 "director_name": "James E. Motluk",
 "no_of_movies": "6"
 },
 {
 "director_name": "Satish Jain",
 "no_of_movies": "6"
 },
 {
 "director_name": "S.V. Rajendra Singh Babu",
 "no_of_movies": "6"
 },
 {
 "director_name": "Tye Banks",
 "no_of_movies": "6"
 },
 {
 "director_name": "Danny L. Zialcita",
 "no_of_movies": "6"
 },
 {
 "director_name": "Delinda Kay",
 "no_of_movies": "6"
 },
 {
 "director_name": "Shankar Nag",
 "no_of_movies": "6"
 },
 {
 "director_name": "Dick Carruthers",
 "no_of_movies": "6"
 },
 {
 "director_name": "Jahnu Barua",
 "no_of_movies": "6"
 },
 {
 "director_name": "Zulfikar Musakov",
 "no_of_movies": "6"
 },
 {
 "director_name": "Upendra",
 "no_of_movies": "6"
 },
 {
 "director_name": "Goutam Ghose",
 "no_of_movies": "6"
 },
 {
 "director_name": "Sunil Sukthankar",
 "no_of_movies": "5"
 },
 {
 "director_name": "Adurthi Subba Rao",
 "no_of_movies": "5"
 },
 {
 "director_name": "Alexander Binder",
 "no_of_movies": "5"
 },
 {
 "director_name": "Andrei Zagdansky",
 "no_of_movies": "5"
 },
 {
 "director_name": "Andrew Morahan",
 "no_of_movies": "5"
 },
 {
 "director_name": "António Borges Correia",
 "no_of_movies": "5"
 },
 {
 "director_name": "Aris Chatzistefanou",
 "no_of_movies": "5"
 },
 {
 "director_name": "Atmaram Thakor",
 "no_of_movies": "5"
 },
 {
 "director_name": "Babubhai Mistry",
 "no_of_movies": "5"
 },
 {
 "director_name": "Barbara Junge",
 "no_of_movies": "5"
 },
 {
 "director_name": "Barry Greenwald",
 "no_of_movies": "5"
 },
 {
 "director_name": "Biodun Stephen",
 "no_of_movies": "5"
 },
 {
 "director_name": "C.V. Sridhar",
 "no_of_movies": "5"
 },
 {
 "director_name": "Charles Uwagbai",
 "no_of_movies": "5"
 },
 {
 "director_name": "Chris Weil",
 "no_of_movies": "5"
 },
 {
 "director_name": "Christopher Kenneally",
 "no_of_movies": "5"
 },
 {
 "director_name": "Curtis Ryan Woodside",
 "no_of_movies": "5"
 },
 {
 "director_name": "Daniel Fisher",
 "no_of_movies": "5"
 },
 {
 "director_name": "Daniel Kremer",
 "no_of_movies": "5"
 },
 {
 "director_name": "David Barnard",
 "no_of_movies": "5"
 },
 {
 "director_name": "Digpal Lanjekar",
 "no_of_movies": "5"
 },
 {
 "director_name": "Dylan McKay",
 "no_of_movies": "5"
 },
 {
 "director_name": "Eldar Shengelaia",
 "no_of_movies": "5"
 },
 {
 "director_name": "Ferenc Moldoványi",
 "no_of_movies": "5"
 },
 {
 "director_name": "Frank Gapinski",
 "no_of_movies": "5"
 },
 {
 "director_name": "Gajendra Vitthal Ahire",
 "no_of_movies": "5"
 },
 {
 "director_name": "Georg Koszulinski",
 "no_of_movies": "5"
 },
 {
 "director_name": "Gëzim Erebara",
 "no_of_movies": "5"
 },
 {
 "director_name": "Goran Markovic",
 "no_of_movies": "5"
 },
 {
 "director_name": "Gordon Quinn",
 "no_of_movies": "5"
 },
 {
 "director_name": "Hannes Rossacher",
 "no_of_movies": "5"
 },
 {
 "director_name": "Haruo Sotozaki",
 "no_of_movies": "5"
 },
 {
 "director_name": "Hayao Miyazaki",
 "no_of_movies": "5"
 },
 {
 "director_name": "Hrishikesh Mukherjee",
 "no_of_movies": "5"
 },
 {
 "director_name": "Ibrahim Muçaj",
 "no_of_movies": "5"
 },
 {
 "director_name": "Ingmar Bergman",
 "no_of_movies": "5"
 },
 {
 "director_name": "Ismael Rubio",
 "no_of_movies": "5"
 },
 {
 "director_name": "Jacques Holender",
 "no_of_movies": "5"
 },
 {
 "director_name": "Jamie Benning",
 "no_of_movies": "5"
 },
 {
 "director_name": "Jason Harney",
 "no_of_movies": "5"
 },
 {
 "director_name": "Joseph Barbera",
 "no_of_movies": "5"
 },
 {
 "director_name": "Josh Lowell",
 "no_of_movies": "5"
 },
 {
 "director_name": "K. Raghavendra Rao",
 "no_of_movies": "5"
 },
 {
 "director_name": "Kamal Smith",
 "no_of_movies": "5"
 },
 {
 "director_name": "King B.",
 "no_of_movies": "5"
 },
 {
 "director_name": "Kristaq Mitro",
 "no_of_movies": "5"
 },
 {
 "director_name": "Leonid Gaidai",
 "no_of_movies": "5"
 },
 {
 "director_name": "M.R. Vittal",
 "no_of_movies": "5"
 },
 {
 "director_name": "M.S. Rajashekar",
 "no_of_movies": "5"
 },
 {
 "director_name": "Marijn Poels",
 "no_of_movies": "5"
 },
 {
 "director_name": "Masaki Kobayashi",
 "no_of_movies": "5"
 },
 {
 "director_name": "Mat Hames",
 "no_of_movies": "5"
 },
 {
 "director_name": "Mattias Löw",
 "no_of_movies": "5"
 },
 {
 "director_name": "Mircea Dragan",
 "no_of_movies": "5"
 },
 {
 "director_name": "Morshedul Islam",
 "no_of_movies": "5"
 },
 {
 "director_name": "Mrinal Sen",
 "no_of_movies": "5"
 },
 {
 "director_name": "Nikolay Volev",
 "no_of_movies": "5"
 },
 {
 "director_name": "Peter Jackson",
 "no_of_movies": "5"
 },
 {
 "director_name": "René Fortunato",
 "no_of_movies": "5"
 },
 {
 "director_name": "Richard Dindo",
 "no_of_movies": "5"
 },
 {
 "director_name": "Ridha Tlili",
 "no_of_movies": "5"
 },
 {
 "director_name": "Robert Delamere",
 "no_of_movies": "5"
 },
 {
 "director_name": "Robin Lough",
 "no_of_movies": "5"
 },
 {
 "director_name": "Rudi Dolezal",
 "no_of_movies": "5"
 },
 {
 "director_name": "S.K. Ananthachari",
 "no_of_movies": "5"
 },
 {
 "director_name": "Sabyasachi Mohapatra",
 "no_of_movies": "5"
 },
 {
 "director_name": "Sara Ferro",
 "no_of_movies": "5"
 },
 {
 "director_name": "Sathyan Anthikad",
 "no_of_movies": "5"
 },
 {
 "director_name": "Scott Noble",
 "no_of_movies": "5"
 },
 {
 "director_name": "Shantaram Rajaram Vankudre",
 "no_of_movies": "5"
 },
 {
 "director_name": "Shawn Welling",
 "no_of_movies": "5"
 },
 {
 "director_name": "Sibi Malayil",
 "no_of_movies": "5"
 },
 {
 "director_name": "Somnath Sen",
 "no_of_movies": "5"
 },
 {
 "director_name": "Sumitra Bhave",
 "no_of_movies": "5"
 },
 {
 "director_name": "Suneel Kumar Reddy",
 "no_of_movies": "5"
 },
 {
 "director_name": "Tareque Masud",
 "no_of_movies": "5"
 },
 {
 "director_name": "Timothy A. Chey",
 "no_of_movies": "5"
 },
 {
 "director_name": "Uttar Kumar",
 "no_of_movies": "5"
 },
 {
 "director_name": "Vetrimaaran",
 "no_of_movies": "5"
 },
 {
 "director_name": "William Hanna",
 "no_of_movies": "5"
 },
 {
 "director_name": "Zahir Raihan",
 "no_of_movies": "5"
 },
 {
 "director_name": "Zheng Zhou",
 "no_of_movies": "5"
 },
 {
 "director_name": "Ziad H. Hamzeh",
 "no_of_movies": "5"
 },
 {
 "director_name": "Zoltán Török",
 "no_of_movies": "5"
 },
 {
 "director_name": "Yasmine Asha",
 "no_of_movies": "4"
 },
 {
 "director_name": "Aneek Chaudhuri",
 "no_of_movies": "4"
 },
 {
 "director_name": "Matthew Bourne",
 "no_of_movies": "4"
 },
 {
 "director_name": "Tom Rowsell",
 "no_of_movies": "4"
 },
 {
 "director_name": "Michael Loukinen",
 "no_of_movies": "4"
 },
 {
 "director_name": "Michael P. Nash",
 "no_of_movies": "4"
 },
 {
 "director_name": "Isaac L. Oliver",
 "no_of_movies": "4"
 },
 {
 "director_name": "Miguel Rodríguez Arias",
 "no_of_movies": "4"
 },
 {
 "director_name": "Mike Hill",
 "no_of_movies": "4"
 },
 {
 "director_name": "Mike Relon Makiling",
 "no_of_movies": "4"
 },
 {
 "director_name": "Tom Smith",
 "no_of_movies": "4"
 },
 {
 "director_name": "Mladen Maticevic",
 "no_of_movies": "4"
 },
 {
 "director_name": "Ilyas Waheed",
 "no_of_movies": "4"
 },
 {
 "director_name": "Toshio Masuda",
 "no_of_movies": "4"
 },
 {
 "director_name": "Toto Natividad",
 "no_of_movies": "4"
 },
 {
 "director_name": "Ms. Michelle",
 "no_of_movies": "4"
 },
 {
 "director_name": "Ian Darling",
 "no_of_movies": "4"
 },
 {
 "director_name": "N.C. Rajan",
 "no_of_movies": "4"
 },
 {
 "director_name": "Harsukh Patel",
 "no_of_movies": "4"
 },
 {
 "director_name": "H.L.N. Simha",
 "no_of_movies": "4"
 },
 {
 "director_name": "Gulzar",
 "no_of_movies": "4"
 },
 {
 "director_name": "Neal 'Buboy' Tan",
 "no_of_movies": "4"
 },
 {
 "director_name": "Neal Hutcheson",
 "no_of_movies": "4"
 },
 {
 "director_name": "Neil Young",
 "no_of_movies": "4"
 },
 {
 "director_name": "Greg MacGillivray",
 "no_of_movies": "4"
 },
 {
 "director_name": "Gorman Bechard",
 "no_of_movies": "4"
 },
 {
 "director_name": "Gonzalo Gonzalez",
 "no_of_movies": "4"
 },
 {
 "director_name": "Andrea Kalin",
 "no_of_movies": "4"
 },
 {
 "director_name": "Nuo Wang",
 "no_of_movies": "4"
 },
 {
 "director_name": "Glória Halász",
 "no_of_movies": "4"
 },
 {
 "director_name": "Omar Rojik",
 "no_of_movies": "4"
 },
 {
 "director_name": "Giorgio Testi",
 "no_of_movies": "4"
 },
 {
 "director_name": "Georgi Djulgerov",
 "no_of_movies": "4"
 },
 {
 "director_name": "P. Vasu",
 "no_of_movies": "4"
 },
 {
 "director_name": "Georges Chamchoum",
 "no_of_movies": "4"
 },
 {
 "director_name": "George Miller",
 "no_of_movies": "4"
 },
 {
 "director_name": "Geethapriya",
 "no_of_movies": "4"
 },
 {
 "director_name": "Gábor Murai",
 "no_of_movies": "4"
 },
 {
 "director_name": "Petar B. Vasilev",
 "no_of_movies": "4"
 },
 {
 "director_name": "Pete McCormack",
 "no_of_movies": "4"
 },
 {
 "director_name": "András Salamon",
 "no_of_movies": "4"
 },
 {
 "director_name": "Frederick Wiseman",
 "no_of_movies": "4"
 },
 {
 "director_name": "Frank Rajah Arase",
 "no_of_movies": "4"
 },
 {
 "director_name": "Peter Rosen",
 "no_of_movies": "4"
 },
 {
 "director_name": "Pierre Lamoureux",
 "no_of_movies": "4"
 },
 {
 "director_name": "Pierre Perrault",
 "no_of_movies": "4"
 },
 {
 "director_name": "François Zabaleta",
 "no_of_movies": "4"
 },
 {
 "director_name": "Ferran Brooks",
 "no_of_movies": "4"
 },
 {
 "director_name": "Federico Micali",
 "no_of_movies": "4"
 },
 {
 "director_name": "Eyra Rahman",
 "no_of_movies": "4"
 },
 {
 "director_name": "Evan Tramel",
 "no_of_movies": "4"
 },
 {
 "director_name": "R.J. Adams",
 "no_of_movies": "4"
 },
 {
 "director_name": "Rabi Kinagi",
 "no_of_movies": "4"
 },
 {
 "director_name": "Rahim Razali",
 "no_of_movies": "4"
 },
 {
 "director_name": "Raja D.",
 "no_of_movies": "4"
 },
 {
 "director_name": "Emilio Ruiz Barrachina",
 "no_of_movies": "4"
 },
 {
 "director_name": "Rajesh Mittal",
 "no_of_movies": "4"
 },
 {
 "director_name": "Elwood Perez",
 "no_of_movies": "4"
 },
 {
 "director_name": "Elizabeth Chai Vasarhelyi",
 "no_of_movies": "4"
 },
 {
 "director_name": "Amol Palekar",
 "no_of_movies": "4"
 },
 {
 "director_name": "Drayon Blackett",
 "no_of_movies": "4"
 },
 {
 "director_name": "Rezo Chkheidze",
 "no_of_movies": "4"
 },
 {
 "director_name": "Yorgos Avgeropoulos",
 "no_of_movies": "4"
 },
 {
 "director_name": "Amirhossein Makouei",
 "no_of_movies": "4"
 },
 {
 "director_name": "Rob Sibley",
 "no_of_movies": "4"
 },
 {
 "director_name": "Robert Bubalo",
 "no_of_movies": "4"
 },
 {
 "director_name": "Amel Tresnjic",
 "no_of_movies": "4"
 },
 {
 "director_name": "Z. Lokman",
 "no_of_movies": "4"
 },
 {
 "director_name": "Dragan Bjelogrlic",
 "no_of_movies": "4"
 },
 {
 "director_name": "Dinesh Babu",
 "no_of_movies": "4"
 },
 {
 "director_name": "Roxane Schlumberger",
 "no_of_movies": "4"
 },
 {
 "director_name": "Victor Schiavon",
 "no_of_movies": "4"
 },
 {
 "director_name": "Dimitris Koutsiabasakos",
 "no_of_movies": "4"
 },
 {
 "director_name": "Dietmar Post",
 "no_of_movies": "4"
 },
 {
 "director_name": "Dhiresh Ghosh",
 "no_of_movies": "4"
 },
 {
 "director_name": "Amartya Bhattacharyya",
 "no_of_movies": "4"
 },
 {
 "director_name": "Debaki Kumar Bose",
 "no_of_movies": "4"
 },
 {
 "director_name": "David Mallet",
 "no_of_movies": "4"
 },
 {
 "director_name": "S.S. Jishnu Dev",
 "no_of_movies": "4"
 },
 {
 "director_name": "David Lussier",
 "no_of_movies": "4"
 },
 {
 "director_name": "Viktor Gjika",
 "no_of_movies": "4"
 },
 {
 "director_name": "Sam Dunn",
 "no_of_movies": "4"
 },
 {
 "director_name": "Sam Mendes",
 "no_of_movies": "4"
 },
 {
 "director_name": "Sanjay Nayak",
 "no_of_movies": "4"
 },
 {
 "director_name": "Sanjiv Jaiswal",
 "no_of_movies": "4"
 },
 {
 "director_name": "Vipul Mehta",
 "no_of_movies": "4"
 },
 {
 "director_name": "Vipul Sharma",
 "no_of_movies": "4"
 },
 {
 "director_name": "David Herrera",
 "no_of_movies": "4"
 },
 {
 "director_name": "Daniel Schmidt",
 "no_of_movies": "4"
 },
 {
 "director_name": "Scot McFadyen",
 "no_of_movies": "4"
 },
 {
 "director_name": "Alan Gilsenan",
 "no_of_movies": "4"
 },
 {
 "director_name": "Dale Heslip",
 "no_of_movies": "4"
 },
 {
 "director_name": "Sergey Bondarchuk",
 "no_of_movies": "4"
 },
 {
 "director_name": "Sergey Bukovsky",
 "no_of_movies": "4"
 },
 {
 "director_name": "Sergio Leone",
 "no_of_movies": "4"
 },
 {
 "director_name": "Cody Clarke",
 "no_of_movies": "4"
 },
 {
 "director_name": "Abbas Fahdel",
 "no_of_movies": "4"
 },
 {
 "director_name": "William Winckler",
 "no_of_movies": "4"
 },
 {
 "director_name": "Willy Milan",
 "no_of_movies": "4"
 },
 {
 "director_name": "Chuck Jones",
 "no_of_movies": "4"
 },
 {
 "director_name": "Carlos Nader",
 "no_of_movies": "4"
 },
 {
 "director_name": "Carles Prats",
 "no_of_movies": "4"
 },
 {
 "director_name": "Carla Forte",
 "no_of_movies": "4"
 },
 {
 "director_name": "Carl Boese",
 "no_of_movies": "4"
 },
 {
 "director_name": "Agradoot",
 "no_of_movies": "4"
 },
 {
 "director_name": "Boris Malagurski",
 "no_of_movies": "4"
 },
 {
 "director_name": "Stavros Psyllakis",
 "no_of_movies": "4"
 },
 {
 "director_name": "Stephen McCaskell",
 "no_of_movies": "4"
 },
 {
 "director_name": "Steve Rahaman",
 "no_of_movies": "4"
 },
 {
 "director_name": "Boris Lehman",
 "no_of_movies": "4"
 },
 {
 "director_name": "Sudhanshu Mohan Sahoo",
 "no_of_movies": "4"
 },
 {
 "director_name": "Boots Plata",
 "no_of_movies": "4"
 },
 {
 "director_name": "Wolf Schmidt",
 "no_of_movies": "4"
 },
 {
 "director_name": "Abbey Neidik",
 "no_of_movies": "4"
 },
 {
 "director_name": "Sunil Kumar Desai",
 "no_of_movies": "4"
 },
 {
 "director_name": "Billy Lewis",
 "no_of_movies": "4"
 },
 {
 "director_name": "Biju Viswanath",
 "no_of_movies": "4"
 },
 {
 "director_name": "Szilárd Matusik",
 "no_of_movies": "4"
 },
 {
 "director_name": "Bhalji Pendharkar",
 "no_of_movies": "4"
 },
 {
 "director_name": "Bernard Weber",
 "no_of_movies": "4"
 },
 {
 "director_name": "Benjamin Gan",
 "no_of_movies": "4"
 },
 {
 "director_name": "Ben Feleo",
 "no_of_movies": "4"
 },
 {
 "director_name": "Aziz M. Osman",
 "no_of_movies": "4"
 },
 {
 "director_name": "K.S. Sethumadhavan",
 "no_of_movies": "4"
 },
 {
 "director_name": "K. Shankar",
 "no_of_movies": "4"
 },
 {
 "director_name": "Joseph G. Quinn",
 "no_of_movies": "4"
 },
 {
 "director_name": "Taras Khymych",
 "no_of_movies": "4"
 },
 {
 "director_name": "Jose Javier Reyes",
 "no_of_movies": "4"
 },
 {
 "director_name": "Karim Kassem",
 "no_of_movies": "4"
 },
 {
 "director_name": "Karlos Alastruey",
 "no_of_movies": "4"
 },
 {
 "director_name": "Kaushik Ganguly",
 "no_of_movies": "4"
 },
 {
 "director_name": "Kavi Raz",
 "no_of_movies": "4"
 },
 {
 "director_name": "Jose 'Kaka' Balagtas",
 "no_of_movies": "4"
 },
 {
 "director_name": "Kelly Rundle",
 "no_of_movies": "4"
 },
 {
 "director_name": "Kenny Basumatary",
 "no_of_movies": "4"
 },
 {
 "director_name": "Kevin Yang",
 "no_of_movies": "4"
 },
 {
 "director_name": "Yann Arthus-Bertrand",
 "no_of_movies": "4"
 },
 {
 "director_name": "Kodi Ramakrishna",
 "no_of_movies": "4"
 },
 {
 "director_name": "Kostadin Bonev",
 "no_of_movies": "4"
 },
 {
 "director_name": "Ashok Pati",
 "no_of_movies": "4"
 },
 {
 "director_name": "Jonathan Hock",
 "no_of_movies": "4"
 },
 {
 "director_name": "Lee Stanley",
 "no_of_movies": "4"
 },
 {
 "director_name": "Lee Unkrich",
 "no_of_movies": "4"
 },
 {
 "director_name": "Terry Lukemire",
 "no_of_movies": "4"
 },
 {
 "director_name": "John C. Brown",
 "no_of_movies": "4"
 },
 {
 "director_name": "Joel Lamangan",
 "no_of_movies": "4"
 },
 {
 "director_name": "Joe L. Roberts",
 "no_of_movies": "4"
 },
 {
 "director_name": "JJ Osbun",
 "no_of_movies": "4"
 },
 {
 "director_name": "Lucía Palacios",
 "no_of_movies": "4"
 },
 {
 "director_name": "Ludmil Staikov",
 "no_of_movies": "4"
 },
 {
 "director_name": "Luis Ara",
 "no_of_movies": "4"
 },
 {
 "director_name": "Anupam Patnaik",
 "no_of_movies": "4"
 },
 {
 "director_name": "Anuj Joshi",
 "no_of_movies": "4"
 },
 {
 "director_name": "Mac Alejandre",
 "no_of_movies": "4"
 },
 {
 "director_name": "Mahesh Manjrekar",
 "no_of_movies": "4"
 },
 {
 "director_name": "Majid Majidi",
 "no_of_movies": "4"
 },
 {
 "director_name": "Jim Brown",
 "no_of_movies": "4"
 },
 {
 "director_name": "Manuel 'Fyke' Cinco",
 "no_of_movies": "4"
 },
 {
 "director_name": "Jeethu Joseph",
 "no_of_movies": "4"
 },
 {
 "director_name": "Jayantha Chandrasiri",
 "no_of_movies": "4"
 },
 {
 "director_name": "Annie Johnson",
 "no_of_movies": "4"
 },
 {
 "director_name": "Jared Campbell",
 "no_of_movies": "4"
 },
 {
 "director_name": "Jandhyala",
 "no_of_movies": "4"
 },
 {
 "director_name": "Jaeseok Park",
 "no_of_movies": "4"
 }
 ]
 */