-- Funnel Analysis --

-- Event Level Funnel --
-- What actions do users perform? --
SELECT
    event_type,
    COUNT(*) AS total_events
FROM events
GROUP BY event_type
ORDER BY total_events DESC;

-- User Level Funnel --
-- How many users reached each stage? --
SELECT
    event_type,
    COUNT(DISTINCT user_id) AS unique_users
FROM events
GROUP BY event_type
ORDER BY unique_users DESC;

-- Better Funnel --

WITH funnel AS (
    SELECT
        COUNT(DISTINCT CASE WHEN event_type='view' THEN user_id END) AS viewers,
        COUNT(DISTINCT CASE WHEN event_type='cart' THEN user_id END) AS cart_users,
        COUNT(DISTINCT CASE WHEN event_type='purchase' THEN user_id END) AS purchasers
    FROM events
)
SELECT *
FROM funnel;

-- Revenue Analysis --
SELECT
    COUNT(*) AS purchases,
    ROUND(AVG(price)::numeric, 2) AS avg_order_value,
    ROUND(SUM(price)::numeric, 2) AS total_revenue
FROM events
WHERE event_type = 'purchase';

