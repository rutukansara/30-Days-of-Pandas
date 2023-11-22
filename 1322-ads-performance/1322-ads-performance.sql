# Write your MySQL query statement below
SELECT ad_id,
CASE WHEN total > 0 THEN ROUND(clicks/total*100, 2)
ELSE 0
END AS ctr
FROM (SELECT
        ad_id,
        (SELECT COUNT(*) FROM Ads WHERE ad_id = A.ad_id AND action = 'Clicked') AS clicks,
        (SELECT COUNT(*) FROM Ads WHERE ad_id = A.ad_id AND action = 'Viewed') AS views,
        (SELECT COUNT(*) FROM Ads WHERE ad_id = A.ad_id AND action IN ('Clicked', 'Viewed')) AS total
    FROM
        (SELECT DISTINCT ad_id FROM Ads) A) B

    ORDER BY ctr DESC, ad_id ASC;