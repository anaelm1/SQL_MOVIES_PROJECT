/*5. What is the average runtime of movies by genre?
 What: For each genre, calculate the average runtime of associated movies.
 Why: Useful for production planning and understanding pacing by genre.*/
SELECT genre,
    AVG(runtimeminutes) AS avg_runtime
FROM (
        SELECT runtimeminutes,
            unnest(string_to_array(genres, ',')) AS genre
        FROM title_basics
        WHERE titletype = 'movie'
            AND isadult = FALSE
            AND genres IS NOT NULL
            AND runtimeminutes IS NOT NULL
    ) AS genre_split
WHERE genre <> 'Adult'
GROUP BY genre
ORDER BY avg_runtime DESC;
/*
 Results:
 [
 {
 "genre": "Action",
 "avg_runtime": "100.8872387535777934"
 },
 {
 "genre": "Musical",
 "avg_runtime": "98.9504391468005019"
 },
 {
 "genre": "Romance",
 "avg_runtime": "98.6763951332266504"
 },
 {
 "genre": "Drama",
 "avg_runtime": "96.0854480670469563"
 },
 {
 "genre": "Thriller",
 "avg_runtime": "95.8660157398034157"
 },
 {
 "genre": "Crime",
 "avg_runtime": "95.2519014106731467"
 },
 {
 "genre": "War",
 "avg_runtime": "94.6544394037589112"
 },
 {
 "genre": "Mystery",
 "avg_runtime": "93.9842202561732471"
 },
 {
 "genre": "History",
 "avg_runtime": "93.9165155695703587"
 },
 {
 "genre": "Fantasy",
 "avg_runtime": "93.3768988999476166"
 },
 {
 "genre": "Comedy",
 "avg_runtime": "93.0018436702528301"
 },
 {
 "genre": "Adventure",
 "avg_runtime": "92.6942421941305222"
 },
 {
 "genre": "Family",
 "avg_runtime": "91.6073129822207313"
 },
 {
 "genre": "Sci-Fi",
 "avg_runtime": "90.7944227551589515"
 },
 {
 "genre": "Animation",
 "avg_runtime": "89.8768712070128119"
 },
 {
 "genre": "Sport",
 "avg_runtime": "89.1180647291941876"
 },
 {
 "genre": "Biography",
 "avg_runtime": "88.6441266871575571"
 },
 {
 "genre": "Horror",
 "avg_runtime": "88.2421218103385245"
 },
 {
 "genre": "Music",
 "avg_runtime": "88.2063810239706005"
 },
 {
 "genre": "Talk-Show",
 "avg_runtime": "87.0101010101010101"
 },
 {
 "genre": "Reality-TV",
 "avg_runtime": "84.3633217993079585"
 },
 {
 "genre": "Film-Noir",
 "avg_runtime": "81.8826945412311266"
 },
 {
 "genre": "Documentary",
 "avg_runtime": "77.7014914052203923"
 },
 {
 "genre": "Western",
 "avg_runtime": "76.4291176020798287"
 },
 {
 "genre": "News",
 "avg_runtime": "75.4496402877697842"
 },
 {
 "genre": "Game-Show",
 "avg_runtime": "66.7142857142857143"
 },
 {
 "genre": "Short",
 "avg_runtime": "62.0000000000000000"
 }
 ]
 */