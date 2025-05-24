copy title_akas
FROM 'D:/SQL_MOVIES_PROJECT/Data downloaded from IMDb/title.akas.tsv' WITH (
        FORMAT csv,
        DELIMITER E'\t',
        NULL '\N',
        HEADER true,
        QUOTE E'\b',
        ESCAPE E'\b'
    );
copy title_basics
FROM 'D:/SQL_MOVIES_PROJECT/Data downloaded from IMDb/title.basics.tsv' WITH (
        FORMAT csv,
        DELIMITER E'\t',
        NULL '\N',
        HEADER true,
        QUOTE E'\b',
        ESCAPE E'\b'
    );
copy title_crew
FROM 'D:/SQL_MOVIES_PROJECT/Data downloaded from IMDb/title.crew.tsv' WITH (
        FORMAT csv,
        DELIMITER E'\t',
        NULL '\N',
        HEADER true,
        QUOTE E'\b',
        ESCAPE E'\b'
    );
copy title_principals
FROM 'D:/SQL_MOVIES_PROJECT/Data downloaded from IMDb/title.principals.tsv' WITH (
        FORMAT csv,
        DELIMITER E'\t',
        NULL '\N',
        HEADER true,
        QUOTE E'\b',
        ESCAPE E'\b'
    );
copy title_ratings
FROM 'D:/SQL_MOVIES_PROJECT/Data downloaded from IMDb/title.ratings.tsv' WITH (
        FORMAT csv,
        DELIMITER E'\t',
        NULL '\N',
        HEADER true,
        QUOTE E'\b',
        ESCAPE E'\b'
    );
copy name_basics
FROM 'D:/SQL_MOVIES_PROJECT/Data downloaded from IMDb/name.basics.tsv' WITH (
        FORMAT csv,
        DELIMITER E'\t',
        NULL '\N',
        HEADER true,
        QUOTE E'\b',
        ESCAPE E'\b'