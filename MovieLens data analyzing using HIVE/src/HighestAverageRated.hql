--HIGHEST AVERAGE RATING

CREATE VIEW IF NOT EXISTS topMovieIDs AS
SELECT movieID, AVG(rating) as avgRating, COUNT(movieID) as ratingCount
FROM u
GROUP BY movieID
ORDER BY ratingCount DESC;

SELECT n.title, ratingCount
FROM topMovieIDs t JOIN names n ON t.movieID=n.movieID
WHERE ratingCount>10;
