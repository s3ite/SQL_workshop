SELECT assistant, SUM(price) as price
FROM transaction
INNER JOIN can on can.name = transaction.can
GROUP BY assistant
ORDER BY price DESC
LIMIT 3
