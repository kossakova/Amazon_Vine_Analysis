-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

select * from vine_table limit 10;

CREATE TABLE filtered1 AS
SELECT *  
FROM vine_table
WHERE total_votes >= 20;
select * from filtered1 limit 10;

		
CREATE TABLE filtered2 AS
SELECT * FROM filtered1
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;
select * from filtered2 limit 10;

CREATE TABLE filtered3 AS
SELECT * FROM filtered2
WHERE vine = 'N';
select * from filtered3 limit 10;

CREATE TABLE filtered4 AS
SELECT * FROM filtered2
WHERE vine = 'Y';
select * from filtered4 limit 10;

WITH all_reviews as(
SELECT COUNT(review_id) AS total_reviews,
COUNT (star_rating) AS count_five_star,

WHERE CAST(count_five_star AS FLOAT)/CAST(total_reviews AS FLOAT) >=0.5;
WHERE (star_rating )
WHERE vine = 'N'AS unpaid
FROM vine_table;
	
	
	-- Query data from table to show total reviews, number of 5-star reviews,
-- and percentage of 5-star reviews for the two types of reviews (paid vs unpaid)
WITH all_reviews as(
    SELECT
        vine, 
        count(review_id) AS total_reviews
    FROM vine_table
    GROUP BY vine
),
five_star_reviews as(
    SELECT
        vine, 
        count(star_rating) AS five_stars
    FROM vine_table
    WHERE star_rating = '5'
    GROUP BY vine
)
SELECT
    all_reviews.vine,
    total_reviews,
    five_stars,
    CAST(five_stars AS FLOAT)/CAST(total_reviews AS FLOAT)*100 AS percentage_five_star
FROM all_reviews
JOIN five_star_reviews ON all_reviews.vine = five_star_reviews.vine;