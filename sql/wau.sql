-- Weekly Active Users (WAU)

SELECT
    DATE_TRUNC('week', event_time) AS week,
    COUNT(DISTINCT user_id) AS wau
FROM events
GROUP BY week
ORDER BY week;