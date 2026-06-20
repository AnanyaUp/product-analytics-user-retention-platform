-- Build RFM Table --
-- RFM Metrics

SELECT
    user_id,
    MAX(DATE(event_time)) AS last_activity_date,
    DATE '2019-12-01'
    - MAX(DATE(event_time))
    AS recency,
    COUNT(*) AS frequency,
    ROUND(
        SUM(
            CASE
                WHEN event_type='purchase'
                THEN price
                ELSE 0
            END
        )::numeric,
        2
    ) AS monetary
FROM events
GROUP BY user_id;