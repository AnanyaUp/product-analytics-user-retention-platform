# Product Metrics Analysis

## Objective

The objective of this analysis is to evaluate platform engagement, user activity, and product stickiness using industry-standard product analytics metrics.

The metrics analyzed include:

- Daily Active Users (DAU)
- Weekly Active Users (WAU)
- Monthly Active Users (MAU)
- Stickiness (DAU / MAU)

These metrics are commonly used by product teams at companies such as Amazon, Spotify, Netflix, Atlassian, Flipkart, Swiggy, and Meesho to monitor product health and user engagement.

---

# Daily Active Users (DAU)

## Definition

DAU measures the number of unique users who performed at least one action on the platform during a given day.

---

## Results

| Metric      | Value  |
| ----------- | ------ |
| Average DAU | 19,685 |
| Median DAU  | 15,787 |
| Maximum DAU | 55,972 |
| Minimum DAU | 11,747 |

---

## Observations

User activity remained relatively stable during most of November, ranging between approximately 14,000 and 18,000 active users per day.

However, a significant surge occurred between November 14 and November 17.

During this period, DAU increased from approximately 22,000 users to nearly 56,000 users.

---

## Business Interpretation

The sudden increase in activity suggests the presence of a major external driver such as:

- Promotional campaigns
- Seasonal sales events
- Marketing initiatives
- Platform-wide discounts
- Increased customer acquisition efforts

The immediate decline following the spike indicates that most newly acquired users did not remain consistently engaged with the platform.

This behavior is commonly observed during event-driven traffic spikes.

---

# Weekly Active Users (WAU)

## Definition

WAU measures the number of unique users active during a given week.

---

## Results

| Week Start Date | WAU     |
| --------------- | ------- |
| 2019-10-28      | 38,769  |
| 2019-11-04      | 107,594 |
| 2019-11-11      | 206,666 |
| 2019-11-18      | 100,991 |
| 2019-11-25      | 87,548  |

---

## Observations

The week beginning November 11 generated the highest user activity.

WAU reached:

206,666 users

This was nearly double the activity observed during neighboring weeks.

---

## Business Interpretation

This finding reinforces the DAU analysis and strongly suggests that a specific campaign or seasonal event drove a temporary increase in user engagement.

Understanding the source of this traffic spike would be critical for future growth planning.

---

# Monthly Active Users (MAU)

## Definition

MAU measures the number of unique users active during the month.

---

## Result

| Metric | Value   |
| ------ | ------- |
| MAU    | 473,566 |

---

## Business Interpretation

The platform successfully attracted a large user base during the observation period.

This indicates strong acquisition performance and substantial platform reach.

However, acquisition alone is insufficient to drive long-term business growth.

User retention and engagement must also be evaluated.

---

# Stickiness Analysis

## Definition

Stickiness measures how frequently users return to the platform.

Formula:

Stickiness = Average DAU / MAU

---

## Result

| Metric     | Value |
| ---------- | ----- |
| Stickiness | 4.16% |

---

## Industry Benchmark

| Stickiness    | Interpretation |
| ------------- | -------------- |
| Less than 10% | Weak           |
| 10% - 20%     | Moderate       |
| 20% - 30%     | Strong         |
| Above 30%     | Excellent      |

---

## Interpretation

The platform's stickiness score of 4.16% indicates low recurring engagement.

Although a large number of users visit the platform during the month, only a small proportion return on a regular basis.

This suggests that the platform is effective at attracting users but less effective at encouraging repeat usage.

---

# Combined Business Insights

The analysis reveals a common growth challenge faced by many digital platforms:

## Strong Acquisition

The platform successfully attracted:

473,566 monthly active users.

This demonstrates strong reach and user acquisition capabilities.

---

## Weak Retention

Despite high acquisition numbers:

- Average DAU remains relatively low.
- Stickiness is only 4.16%.
- User activity drops significantly after major engagement spikes.

This indicates that many users do not become long-term active users.

---

## Event-Driven Engagement

The mid-November spike demonstrates that traffic can be increased substantially through external initiatives.

However, most of the acquired activity appears temporary.

Future efforts should focus on converting short-term visitors into recurring users.

---

# Recommendations

## Improve User Retention

Potential initiatives include:

- Personalized recommendations
- Email re-engagement campaigns
- Push notification strategies
- Loyalty and rewards programs

---

## Investigate Mid-November Activity Spike

Identify:

- Marketing campaigns
- Promotional events
- Product launches
- Seasonal factors

that contributed to the surge in activity.

Replicating successful drivers could improve future growth.

---

## Reduce Funnel Drop-Off

EDA results revealed substantial drop-off between product views and cart additions.

Future analysis should investigate:

- Product page effectiveness
- Pricing strategies
- Product discovery experience
- Checkout friction

---

# Next Steps

The following analyses will be conducted:

1. Funnel Analysis
2. Retention Analysis
3. Cohort Analysis
4. User Segmentation
5. Churn Prediction
6. Executive Dashboard Development
7. Streamlit Product Analytics Application

These analyses will provide deeper insight into user behavior, engagement drivers, and growth opportunities.
