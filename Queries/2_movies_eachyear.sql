/* 2. How many movies were released each year over the last 20 years?
 What: Count movies released each year.
 Why: Useful for identifying trends in movie production (e.g., decline during pandemic years). */
SELECT startyear as Year,
    COUNT(tconst) AS no_of_movies
FROM title_basics
WHERE titletype = 'movie'
    AND isadult = FALSE
    AND startyear IS NOT NULL
GROUP BY startyear
ORDER BY no_of_movies DESC;
/*
 Results:
 [
 {
 "year": 2022,
 "no_of_movies": "20670"
 },
 {
 "year": 2023,
 "no_of_movies": "20514"
 },
 {
 "year": 2024,
 "no_of_movies": "19909"
 },
 {
 "year": 2018,
 "no_of_movies": "19309"
 },
 {
 "year": 2019,
 "no_of_movies": "19230"
 },
 {
 "year": 2017,
 "no_of_movies": "19062"
 },
 {
 "year": 2021,
 "no_of_movies": "18939"
 },
 {
 "year": 2016,
 "no_of_movies": "18552"
 },
 {
 "year": 2015,
 "no_of_movies": "17396"
 },
 {
 "year": 2014,
 "no_of_movies": "16776"
 },
 {
 "year": 2020,
 "no_of_movies": "16471"
 },
 {
 "year": 2013,
 "no_of_movies": "15580"
 },
 {
 "year": 2012,
 "no_of_movies": "14931"
 },
 {
 "year": 2011,
 "no_of_movies": "13842"
 },
 {
 "year": 2010,
 "no_of_movies": "12873"
 },
 {
 "year": 2009,
 "no_of_movies": "12082"
 },
 {
 "year": 2008,
 "no_of_movies": "10611"
 },
 {
 "year": 2007,
 "no_of_movies": "9158"
 },
 {
 "year": 2025,
 "no_of_movies": "9000"
 },
 {
 "year": 2006,
 "no_of_movies": "8372"
 },
 {
 "year": 2005,
 "no_of_movies": "7813"
 },
 {
 "year": 2004,
 "no_of_movies": "6796"
 },
 {
 "year": 2003,
 "no_of_movies": "6207"
 },
 {
 "year": 2002,
 "no_of_movies": "5891"
 },
 {
 "year": 2001,
 "no_of_movies": "5671"
 },
 {
 "year": 2000,
 "no_of_movies": "5283"
 },
 {
 "year": 1999,
 "no_of_movies": "5061"
 },
 {
 "year": 1998,
 "no_of_movies": "4857"
 },
 {
 "year": 1997,
 "no_of_movies": "4668"
 },
 {
 "year": 1990,
 "no_of_movies": "4506"
 },
 {
 "year": 1988,
 "no_of_movies": "4371"
 },
 {
 "year": 1991,
 "no_of_movies": "4366"
 },
 {
 "year": 1995,
 "no_of_movies": "4355"
 },
 {
 "year": 1996,
 "no_of_movies": "4345"
 },
 {
 "year": 1989,
 "no_of_movies": "4339"
 },
 {
 "year": 1992,
 "no_of_movies": "4334"
 },
 {
 "year": 1987,
 "no_of_movies": "4263"
 },
 {
 "year": 1994,
 "no_of_movies": "4154"
 },
 {
 "year": 1986,
 "no_of_movies": "4131"
 },
 {
 "year": 1993,
 "no_of_movies": "4110"
 },
 {
 "year": 1985,
 "no_of_movies": "4101"
 },
 {
 "year": 1984,
 "no_of_movies": "4059"
 },
 {
 "year": 1970,
 "no_of_movies": "4009"
 },
 {
 "year": 1983,
 "no_of_movies": "3946"
 },
 {
 "year": 1972,
 "no_of_movies": "3898"
 },
 {
 "year": 1979,
 "no_of_movies": "3892"
 },
 {
 "year": 1982,
 "no_of_movies": "3892"
 },
 {
 "year": 1971,
 "no_of_movies": "3888"
 },
 {
 "year": 1969,
 "no_of_movies": "3865"
 },
 {
 "year": 1980,
 "no_of_movies": "3863"
 },
 {
 "year": 1981,
 "no_of_movies": "3815"
 },
 {
 "year": 1975,
 "no_of_movies": "3752"
 },
 {
 "year": 1978,
 "no_of_movies": "3736"
 },
 {
 "year": 1973,
 "no_of_movies": "3734"
 },
 {
 "year": 1968,
 "no_of_movies": "3696"
 },
 {
 "year": 1976,
 "no_of_movies": "3635"
 },
 {
 "year": 1974,
 "no_of_movies": "3623"
 },
 {
 "year": 1977,
 "no_of_movies": "3592"
 },
 {
 "year": 1967,
 "no_of_movies": "3320"
 },
 {
 "year": 1966,
 "no_of_movies": "3227"
 },
 {
 "year": 1965,
 "no_of_movies": "3211"
 },
 {
 "year": 1964,
 "no_of_movies": "2969"
 },
 {
 "year": 1961,
 "no_of_movies": "2961"
 },
 {
 "year": 1960,
 "no_of_movies": "2933"
 },
 {
 "year": 1962,
 "no_of_movies": "2847"
 },
 {
 "year": 1963,
 "no_of_movies": "2775"
 },
 {
 "year": 1959,
 "no_of_movies": "2760"
 },
 {
 "year": 1958,
 "no_of_movies": "2745"
 },
 {
 "year": 1957,
 "no_of_movies": "2662"
 },
 {
 "year": 1920,
 "no_of_movies": "2652"
 },
 {
 "year": 1921,
 "no_of_movies": "2621"
 },
 {
 "year": 1956,
 "no_of_movies": "2613"
 },
 {
 "year": 1919,
 "no_of_movies": "2471"
 },
 {
 "year": 1955,
 "no_of_movies": "2394"
 },
 {
 "year": 1954,
 "no_of_movies": "2305"
 },
 {
 "year": 1936,
 "no_of_movies": "2245"
 },
 {
 "year": 1918,
 "no_of_movies": "2242"
 },
 {
 "year": 1953,
 "no_of_movies": "2230"
 },
 {
 "year": 1927,
 "no_of_movies": "2216"
 },
 {
 "year": 1922,
 "no_of_movies": "2190"
 },
 {
 "year": 1928,
 "no_of_movies": "2188"
 },
 {
 "year": 1917,
 "no_of_movies": "2184"
 },
 {
 "year": 1952,
 "no_of_movies": "2158"
 },
 {
 "year": 1937,
 "no_of_movies": "2145"
 },
 {
 "year": 1931,
 "no_of_movies": "2140"
 },
 {
 "year": 1932,
 "no_of_movies": "2137"
 },
 {
 "year": 1929,
 "no_of_movies": "2131"
 },
 {
 "year": 1925,
 "no_of_movies": "2118"
 },
 {
 "year": 1916,
 "no_of_movies": "2104"
 },
 {
 "year": 1926,
 "no_of_movies": "2096"
 },
 {
 "year": 1930,
 "no_of_movies": "2045"
 },
 {
 "year": 1933,
 "no_of_movies": "2032"
 },
 {
 "year": 1950,
 "no_of_movies": "2010"
 },
 {
 "year": 1938,
 "no_of_movies": "1991"
 },
 {
 "year": 1935,
 "no_of_movies": "1981"
 },
 {
 "year": 1951,
 "no_of_movies": "1981"
 },
 {
 "year": 1934,
 "no_of_movies": "1950"
 },
 {
 "year": 1924,
 "no_of_movies": "1943"
 },
 {
 "year": 1923,
 "no_of_movies": "1937"
 },
 {
 "year": 1939,
 "no_of_movies": "1902"
 },
 {
 "year": 1949,
 "no_of_movies": "1796"
 },
 {
 "year": 1940,
 "no_of_movies": "1777"
 },
 {
 "year": 1948,
 "no_of_movies": "1653"
 },
 {
 "year": 1915,
 "no_of_movies": "1610"
 },
 {
 "year": 1941,
 "no_of_movies": "1547"
 },
 {
 "year": 1947,
 "no_of_movies": "1524"
 },
 {
 "year": 1942,
 "no_of_movies": "1470"
 },
 {
 "year": 1943,
 "no_of_movies": "1330"
 },
 {
 "year": 1946,
 "no_of_movies": "1319"
 },
 {
 "year": 1944,
 "no_of_movies": "1172"
 },
 {
 "year": 1914,
 "no_of_movies": "1140"
 },
 {
 "year": 1945,
 "no_of_movies": "1132"
 },
 {
 "year": 1913,
 "no_of_movies": "661"
 },
 {
 "year": 2026,
 "no_of_movies": "437"
 },
 {
 "year": 1912,
 "no_of_movies": "321"
 },
 {
 "year": 1911,
 "no_of_movies": "158"
 },
 {
 "year": 1910,
 "no_of_movies": "101"
 },
 {
 "year": 1909,
 "no_of_movies": "84"
 },
 {
 "year": 2027,
 "no_of_movies": "60"
 },
 {
 "year": 1906,
 "no_of_movies": "22"
 },
 {
 "year": 1908,
 "no_of_movies": "20"
 },
 {
 "year": 1905,
 "no_of_movies": "17"
 },
 {
 "year": 1907,
 "no_of_movies": "17"
 },
 {
 "year": 2028,
 "no_of_movies": "11"
 },
 {
 "year": 1899,
 "no_of_movies": "8"
 },
 {
 "year": 1898,
 "no_of_movies": "7"
 },
 {
 "year": 1901,
 "no_of_movies": "7"
 },
 {
 "year": 1900,
 "no_of_movies": "7"
 },
 {
 "year": 2029,
 "no_of_movies": "5"
 },
 {
 "year": 1903,
 "no_of_movies": "4"
 },
 {
 "year": 1902,
 "no_of_movies": "4"
 },
 {
 "year": 1897,
 "no_of_movies": "2"
 },
 {
 "year": 1904,
 "no_of_movies": "2"
 },
 {
 "year": 2032,
 "no_of_movies": "1"
 },
 {
 "year": 1896,
 "no_of_movies": "1"
 },
 {
 "year": 1894,
 "no_of_movies": "1"
 },
 {
 "year": 1888,
 "no_of_movies": "1"
 },
 {
 "year": 2030,
 "no_of_movies": "1"
 },
 {
 "year": 2031,
 "no_of_movies": "1"
 }
 ] 
 
 */