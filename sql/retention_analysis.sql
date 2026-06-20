-- User Acquisition Date --
-- First Visit Date For Every User 

SELECT
    user_id,
    MIN(DATE(event_time)) AS first_visit_date
FROM events
GROUP BY user_id;

-- Build Retention Table --
WITH first_visit AS (
    SELECT
        user_id,
        MIN(DATE(event_time)) AS first_visit_date
    FROM events
    GROUP BY user_id
)
SELECT
    e.user_id,
    fv.first_visit_date,
    DATE(e.event_time) AS activity_date,
    DATE(e.event_time) - fv.first_visit_date AS days_since_signup
FROM events e
JOIN first_visit fv
ON e.user_id = fv.user_id
ORDER BY e.user_id
LIMIT 100;

-- Retention Counts --
WITH first_visit AS (
    SELECT
        user_id,
        MIN(DATE(event_time)) AS first_visit_date
    FROM events
    GROUP BY user_id
),
retention_data AS (
    SELECT
        e.user_id,
        DATE(e.event_time) - fv.first_visit_date
            AS days_since_signup
    FROM events e
    JOIN first_visit fv
        ON e.user_id = fv.user_id
)
SELECT
    days_since_signup,
    COUNT(DISTINCT user_id) AS users
FROM retention_data
GROUP BY days_since_signup
ORDER BY days_since_signup
LIMIT 31;