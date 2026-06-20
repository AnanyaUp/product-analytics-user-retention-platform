-- Churn Features --
SELECT
    user_id,
    COUNT(*) AS total_events,
    SUM(
        CASE
            WHEN event_type='view'
            THEN 1
            ELSE 0
        END
    ) AS views,
    SUM(
        CASE
            WHEN event_type='cart'
            THEN 1
            ELSE 0
        END
    ) AS carts,
    SUM(
        CASE
            WHEN event_type='purchase'
            THEN 1
            ELSE 0
        END
    ) AS purchases,
    ROUND(
        SUM(
            CASE
                WHEN event_type='purchase'
                THEN price
                ELSE 0
            END
        )::numeric,
        2
    ) AS revenue,
    DATE '2019-12-01'
    - MAX(DATE(event_time))
    AS recency
FROM events
GROUP BY user_id;