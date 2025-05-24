/* 1. What are the top 20 highest-rated movies (min 10,000 votes)?
 What: Find 20 movies with the highest averageRating where numVotes > 10,000, ordered by rating and votes.
 Why: Shows audience consensus and filters for significant popularity (avoiding obscure titles with 5 votes and a 10 rating). */
SELECT title_basics.tconst,
    primarytitle,
    genres,
    averagerating,
    numvotes
FROM title_basics
    LEFT JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (
        titletype = 'movie'
        AND isadult = FALSE
    )
    AND title_ratings.numvotes > 10000
ORDER BY averagerating DESC
LIMIT 20;
/*
 Results:
 [
 {
 "tconst": "tt0111161",
 "primarytitle": "The Shawshank Redemption",
 "genres": "Drama",
 "averagerating": 9.3,
 "numvotes": 3045590
 },
 {
 "tconst": "tt0252487",
 "primarytitle": "The Chaos Class",
 "genres": "Comedy",
 "averagerating": 9.2,
 "numvotes": 44503
 },
 {
 "tconst": "tt33175825",
 "primarytitle": "Attack on Titan the Movie: The Last Attack",
 "genres": "Action,Adventure,Animation",
 "averagerating": 9.2,
 "numvotes": 16560
 },
 {
 "tconst": "tt0068646",
 "primarytitle": "The Godfather",
 "genres": "Crime,Drama",
 "averagerating": 9.2,
 "numvotes": 2126064
 },
 {
 "tconst": "tt0259534",
 "primarytitle": "Ramayana: The Legend of Prince Rama",
 "genres": "Action,Adventure,Animation",
 "averagerating": 9.1,
 "numvotes": 16430
 },
 {
 "tconst": "tt0050083",
 "primarytitle": "12 Angry Men",
 "genres": "Crime,Drama",
 "averagerating": 9,
 "numvotes": 925964
 },
 {
 "tconst": "tt0071562",
 "primarytitle": "The Godfather Part II",
 "genres": "Crime,Drama",
 "averagerating": 9,
 "numvotes": 1430228
 },
 {
 "tconst": "tt0468569",
 "primarytitle": "The Dark Knight",
 "genres": "Action,Crime,Drama",
 "averagerating": 9,
 "numvotes": 3022443
 },
 {
 "tconst": "tt0108052",
 "primarytitle": "Schindler's List",
 "genres": "Biography,Drama,History",
 "averagerating": 9,
 "numvotes": 1523386
 },
 {
 "tconst": "tt0167260",
 "primarytitle": "The Lord of the Rings: The Return of the King",
 "genres": "Adventure,Drama,Fantasy",
 "averagerating": 9,
 "numvotes": 2078873
 },
 {
 "tconst": "tt16747572",
 "primarytitle": "The Silence of Swastika",
 "genres": "Documentary,History",
 "averagerating": 9,
 "numvotes": 10625
 },
 {
 "tconst": "tt5275892",
 "primarytitle": "O.J.: Made in America",
 "genres": "Biography,Crime,Documentary",
 "averagerating": 8.9,
 "numvotes": 23142
 },
 {
 "tconst": "tt0110912",
 "primarytitle": "Pulp Fiction",
 "genres": "Crime,Drama",
 "averagerating": 8.9,
 "numvotes": 2335919
 },
 {
 "tconst": "tt0075143",
 "primarytitle": "The Message",
 "genres": "Biography,Drama,History",
 "averagerating": 8.9,
 "numvotes": 11423
 },
 {
 "tconst": "tt0253828",
 "primarytitle": "Tosun Pasha",
 "genres": "Comedy,History",
 "averagerating": 8.9,
 "numvotes": 25553
 },
 {
 "tconst": "tt0120737",
 "primarytitle": "The Lord of the Rings: The Fellowship of the Ring",
 "genres": "Adventure,Drama,Fantasy",
 "averagerating": 8.9,
 "numvotes": 2108885
 },
 {
 "tconst": "tt5354160",
 "primarytitle": "Mirror Game",
 "genres": "Crime,Mystery,Thriller",
 "averagerating": 8.9,
 "numvotes": 30478
 },
 {
 "tconst": "tt33428606",
 "primarytitle": "Solo Leveling: ReAwakening",
 "genres": "Action,Adventure,Animation",
 "averagerating": 8.8,
 "numvotes": 13042
 },
 {
 "tconst": "tt0253779",
 "primarytitle": "The Foster Brothers",
 "genres": "Comedy,History",
 "averagerating": 8.8,
 "numvotes": 21814
 },
 {
 "tconst": "tt2077886",
 "primarytitle": "The Phantom of the Opera at the Royal Albert Hall",
 "genres": "Drama,Musical,Romance",
 "averagerating": 8.8,
 "numvotes": 10419
 }
 ]
 */