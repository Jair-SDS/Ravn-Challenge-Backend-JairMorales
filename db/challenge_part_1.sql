
-- 1. Who are the first 10 authors ordered by date_of_birth?
SELECT name, date_of_birth FROM authors ORDER BY date_of_birth LIMIT 10;

-- 2. What is the sales total for the author named “Lorelai Gilmore”?
SELECT sum(sale_items.item_price) AS "TOTAL" FROM sale_items
JOIN books ON sale_items.book_id = books.id
JOIN authors ON books.author_id = authors.id 
WHERE authors."name"='Lorelai Gilmore';
	
-- 3. What are the top 10 performing authors, ranked by sales revenue?
SELECT authors.id, authors."name", sum(sale_items.item_price) AS total_revenue FROM sale_items
JOIN books ON sale_items.book_id = books.id
JOIN authors ON books.author_id = authors.id
GROUP BY authors.id
ORDER BY total_revenue DESC
LIMIT 10;