-- Monthly Active Users (MAU)

SELECT
    COUNT(DISTINCT user_id) AS mau
FROM events;