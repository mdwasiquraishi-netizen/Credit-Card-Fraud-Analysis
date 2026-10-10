DROP TABLE IF EXISTS credit_card;

CREATE TABLE credit_card(
	    Time  DOUBLE PRECISION,
		V1  DOUBLE PRECISION,
	    V2  DOUBLE PRECISION,
	    V3  DOUBLE PRECISION,
	    V4  DOUBLE PRECISION,
	    V5  DOUBLE PRECISION,
	    V6  DOUBLE PRECISION,
	    V7  DOUBLE PRECISION,
	    V8  DOUBLE PRECISION,
	    V9  DOUBLE PRECISION,
	    V10 DOUBLE PRECISION,
	    V11 DOUBLE PRECISION,
	    V12 DOUBLE PRECISION,
	    V13 DOUBLE PRECISION,
	    V14 DOUBLE PRECISION,
	    V15 DOUBLE PRECISION,
	    V16 DOUBLE PRECISION,
	    V17 DOUBLE PRECISION,
	    V18 DOUBLE PRECISION,
	    V19 DOUBLE PRECISION,
	    V20 DOUBLE PRECISION,
	    V21 DOUBLE PRECISION,
	    V22 DOUBLE PRECISION,
	    V23 DOUBLE PRECISION,
	    V24 DOUBLE PRECISION,
	    V25 DOUBLE PRECISION,
	    V26 DOUBLE PRECISION,
	    V27 DOUBLE PRECISION,
	    V28 DOUBLE PRECISION,
        Amount NUMERIC(18,2),
		Class INTEGER
);

SELECT * FROM credit_card;

--Business Problems And Solutions--

--Q1)What is the total number of transactions?
SELECT COUNT(*) AS total_transactions
FROM credit_card;

--Q2)How many transactions are fraudulent?
SELECT COUNT(*) AS fraudulent_transactions
FROM credit_card
WHERE class = 1;

--Q3)What is the overall fraud rate?
SELECT ROUND(
100.0 * SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END)
/ COUNT(*),3) AS fraud_rate
FROM credit_card;

--Q4)What is the total transaction amount?
SELECT SUM(Amount) AS total_transaction_amount
FROM credit_card;

--Q5)What is the total fraudulent transaction amount?
SELECT SUM(Amount) AS total_fraudulent_amount
FROM credit_card
WHERE Class = 1;

--Q6)What is the average transaction amount by class?
SELECT Class, ROUND(AVG(Amount),2) AS avg_transaction_amount
FROM credit_card
GROUP BY Class
ORDER BY avg_transaction_amount DESC;

--Q7)What percentage of transaction value is fraudulent?
SELECT ROUND
(100.0 * SUM(CASE WHEN Class = 1 THEN Amount ELSE 0 END)
/ SUM(Amount),2) AS fraudulent_transactions
FROM credit_card;

--Q8)Which transaction amount range has the highest fraud rate?
SELECT Amount, COUNT(*) AS transactions, SUM(Class) AS fraud_transactions,
ROUND(100.0 * SUM(Class) / COUNT(*),3) AS fraud_rate
FROM credit_card
GROUP BY Amount
ORDER BY fraud_rate DESC;

--Q9)What are the top 10 highest-value fraudulent transactions?
SELECT Class, Amount
FROM credit_card
WHERE Class = 1
ORDER BY Amount DESC LIMIT 10;

--Q10)What are the smallest fraudulent transactions?
SELECT Class, Amount
FROM credit_card
WHERE Class = 1
ORDER BY Amount LIMIT 10;

--Q11)Which time periods have the highest fraud rate?
SELECT
    Time,
    COUNT(*) AS total_transactions,
    COUNT(*) FILTER (WHERE Class = 1) AS fraudulent_transactions,
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE Class = 1)
        / NULLIF(COUNT(*), 0),
        3
    ) AS fraud_rate_percentage
FROM credit_card
GROUP BY Time
ORDER BY fraud_rate_percentage DESC;

--Q12)How does transaction volume vary by time?
SELECT Time, 
COUNT(*) AS total_transactions,
COUNT(*) FILTER(WHERE Class = 0) AS normal_transaction, 
COUNT(*) FILTER(WHERE Class = 1) AS fraudulent_transaction
FROM credit_card
GROUP BY Time
ORDER BY Time;

--Q13)Are zero-value transactions associated with fraud?
SELECT Amount = 0 AS is_zero_value,
COUNT(*) AS total_transactions,
COUNT(*) FILTER(WHERE Class = 1) AS fraudulent_transactions,
ROUND(100.0 * COUNT(*) FILTER(WHERE Class = 1) / COUNT(*),2) AS fraud_percentage
FROM credit_card
GROUP BY Amount = 0
ORDER BY fraud_percentage DESC;

