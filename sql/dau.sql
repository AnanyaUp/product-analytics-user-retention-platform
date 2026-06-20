-- Daily Active Users (DAU)

SELECT
    DATE(event_time) AS activity_date,
    COUNT(DISTINCT user_id) AS dau
FROM events
GROUP BY activity_date
ORDER BY activity_date;