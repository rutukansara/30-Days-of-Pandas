# Write your MySQL query statement below
SELECT
ROUND(COUNT(CASE WHEN order_date = customer_pref_delivery_date THEN 1 END)/ COUNT(delivery_id) * 100, 2)
AS immediate_percentage
FROM Delivery