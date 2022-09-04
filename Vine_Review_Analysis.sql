-- Creating vine table
CREATE TABLE vine_table (
    review_id TEXT PRIMARY KEY,
    star_rating INTEGER,
    helpful_votes INTEGER,
    total_votes INTEGER,
    vine TEXT,
    verified_purchase TEXT
    );

-- 1. Creating a table (filtered_20) where total_votes count is equal or greater than 20.
SELECT review_id,
	star_rating,
	helpful_votes,
	total_votes,
	vine,
	verified_purchase
INTO filtered_20
FROM vine_table
WHERE (total_votes >=20);

-- 2. Filter filtered_20 table and create a new table (greater_50) to retrieve
-- all raws where the number of helpful_votes divided by total_votes
-- is equal to or greater than 50%.

SELECT review_id,
    star_rating,
    helpful_votes,
    total_votes,
    vine,
    verified_purchase
INTO greater_50
FROM filtered_20
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

-- 3. Filter greater_50 table and create a new table (vine_paid) that retrieves all the rows 
-- where a review was written as part of the Vine program

SELECT review_id,
    star_rating,
    helpful_votes,
    total_votes,
    vine,
    verified_purchase
INTO vine_paid
FROM greater_50
WHERE (vine = 'Y');

-- 4. Filter greater_50 table and create a new table (vine_unpaid) that retrieves all the rows 
-- where a review was not written as part of the Vine program


SELECT review_id,
    star_rating,
    helpful_votes,
    total_votes,
    vine,
    verified_purchase
INTO vine_paid
FROM greater_50
WHERE (vine = 'N');

--5.1 Determine total number of reviews from vine_table.
SELECT COUNT (review_id)
FROM vine_table;

-- Determine total number of paid and unpaid reviews from vine_table.
SELECT vine AS "Vine Review Type (Paid-Y, Unpaid-N)",
	COUNT(review_id) AS reviews
FROM vine_table
GROUP BY vine;

-- 5.2 Determine the number of 5-star reviews from vine_table.
SELECT star_rating, COUNT(review_id) as "Total 5 star Reviews"
FROM vine_table
WHERE (star_rating = 5)
GROUP BY star_rating

--5.3 Determine the percentage of 5-star reviews for paid and non-paid reviews
SELECT vine AS "Vine Review Type (Paid-Y, Unpaid-N)",
	COUNT(review_id) AS reviews,
	COUNT(*)*100.0 / SUM(COUNT(*)) OVER()AS "% of total reviews" 
FROM vine_table
WHERE star_rating = 5 
GROUP BY vine;
