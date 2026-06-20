-- Assign Users To Cohorts --
WITH first_visit AS (
    SELECT
        user_id,
        MIN(DATE(event_time)) AS first_visit_date
    FROM events
    GROUP BY user_id
)
SELECT
    user_id,
    DATE_TRUNC('week', first_visit_date) AS cohort_week
FROM first_visit
LIMIT 20;

-- Build Cohort Activity Table --
WITH first_visit AS (
    SELECT
        user_id,
        MIN(DATE(event_time)) AS first_visit_date
    FROM events
    GROUP BY user_id
),
user_activity AS (
    SELECT
        e.user_id,
        DATE_TRUNC('week', fv.first_visit_date) AS cohort_week,
        DATE_TRUNC('week', DATE(e.event_time)) AS activity_week
    FROM events e
    JOIN first_visit fv
        ON e.user_id = fv.user_id
)
SELECT
    cohort_week,
    activity_week,
    COUNT(DISTINCT user_id) AS users
FROM user_activity
GROUP BY cohort_week, activity_week
ORDER BY cohort_week, activity_week;