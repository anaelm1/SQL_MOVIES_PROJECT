/*3. What are the most common movie genres of all time?
 What: Count how many times each genre appears (even if multiple genres per movie).
 Why: Identifies which genres dominate the industry (e.g., drama, comedy).*/
SELECT genre,
    COUNT(*) AS genre_count
FROM (
        SELECT unnest(string_to_array(genres, ',')) AS genre
        FROM title_basics
        WHERE titletype = 'movie'
            AND isadult = FALSE
            AND genres IS NOT NULL
    ) AS genre_split
GROUP BY genre
ORDER BY genre_count DESC;
/*
 Results:
 [
 {
 "genre": "Drama",
 "genre_count": "257088"
 },
 {
 "genre": "Documentary",
 "genre_count": "139914"
 },
 {
 "genre": "Comedy",
 "genre_count": "118447"
 },
 {
 "genre": "Action",
 "genre_count": "59029"
 },
 {
 "genre": "Romance",
 "genre_count": "51380"
 },
 {
 "genre": "Thriller",
 "genre_count": "50225"
 },
 {
 "genre": "Horror",
 "genre_count": "43454"
 },
 {
 "genre": "Crime",
 "genre_count": "40979"
 },
 {
 "genre": "Adventure",
 "genre_count": "30552"
 },
 {
 "genre": "Mystery",
 "genre_count": "19442"
 },
 {
 "genre": "Family",
 "genre_count": "19252"
 },
 {
 "genre": "Biography",
 "genre_count": "19088"
 },
 {
 "genre": "Fantasy",
 "genre_count": "17020"
 },
 {
 "genre": "History",
 "genre_count": "15916"
 },
 {
 "genre": "Sci-Fi",
 "genre_count": "15541"
 },
 {
 "genre": "Music",
 "genre_count": "14547"
 },
 {
 "genre": "Musical",
 "genre_count": "10931"
 },
 {
 "genre": "Animation",
 "genre_count": "10470"
 },
 {
 "genre": "War",
 "genre_count": "9897"
 },
 {
 "genre": "Western",
 "genre_count": "8408"
 },
 {
 "genre": "Sport",
 "genre_count": "8280"
 },
 {
 "genre": "News",
 "genre_count": "1474"
 },
 {
 "genre": "Film-Noir",
 "genre_count": "861"
 },
 {
 "genre": "Reality-TV",
 "genre_count": "581"
 },
 {
 "genre": "Talk-Show",
 "genre_count": "204"
 },
 {
 "genre": "Game-Show",
 "genre_count": "31"
 },
 {
 "genre": "Adult",
 "genre_count": "2"
 },
 {
 "genre": "Short",
 "genre_count": "1"
 }
 ]
 */