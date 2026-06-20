# Exploratory Data Analysis (EDA)

## Project Overview

This project analyzes user interaction events from a large-scale e-commerce platform to understand user behavior, engagement patterns, product interactions, and conversion opportunities.

The original dataset contained millions of event records. A representative sample of 675,019 records spanning the entire month of November 2019 was created for exploratory analysis.

---

# Dataset Summary

| Metric            | Value                    |
| ----------------- | ------------------------ |
| Total Events      | 675,019                  |
| Unique Users      | 473,566                  |
| Unique Products   | 78,181                   |
| Unique Categories | 656                      |
| Unique Brands     | 3,179                    |
| Date Range        | 2019-11-01 to 2019-11-30 |

---

# Data Quality Assessment

## Missing Values

| Column        | Missing Values |
| ------------- | -------------- |
| category_code | Present        |
| brand         | Present        |
| Other Columns | 0              |

### Business Interpretation

Missing values are primarily observed in product metadata fields such as category_code and brand. These records were retained because they do not impact user activity analysis, retention metrics, or funnel calculations.

Removing these rows would result in loss of valuable behavioral information.

---

# Event Type Analysis

| Event Type | Count   |
| ---------- | ------- |
| View       | 635,782 |
| Cart       | 30,295  |
| Purchase   | 8,942   |

## Conversion Funnel

### View → Cart Conversion

4.76%

### Cart → Purchase Conversion

29.52%

### View → Purchase Conversion

1.41%

## Business Insight

The largest drop-off occurs between the View and Cart stages of the customer journey.

This suggests that users frequently browse products but do not proceed to purchase intent actions.

Potential reasons include:

- Price sensitivity
- Product comparison behavior
- Lack of product information
- Low purchase intent traffic
- User experience issues

The Cart-to-Purchase conversion rate is comparatively healthy, indicating that users who add products to the cart show stronger purchase intent.

---

# User Engagement Analysis

## Unique Users

473,566 users generated 675,019 events.

Average Events Per User:

1.43

## Business Insight

Most users perform only one or two interactions during the observation period.

This may indicate:

- High proportion of first-time visitors
- Low platform stickiness
- Opportunity to improve user retention and engagement

Retention analysis will be required to validate whether users return after their initial interaction.

---

# Product Catalog Analysis

## Unique Products

78,181 products

## Business Insight

The platform contains a very large and diverse catalog.

This resembles large-scale marketplaces such as Amazon, Flipkart, and Meesho, where product discovery and recommendation systems play a critical role in driving engagement and conversions.

---

# Category Analysis

## Unique Categories

656 categories

## Business Insight

The platform serves multiple product verticals rather than a narrow niche.

This enables future analysis of:

- Category-wise engagement
- Category-wise conversion rates
- Category contribution to revenue

---

# Brand Analysis

## Unique Brands

3,179 brands

## Business Insight

The marketplace is highly fragmented and not dominated by a small number of brands.

Future analyses may include:

- Top-performing brands
- Brand contribution to revenue
- Brand-wise conversion rates

---

# Price Analysis

## Summary Statistics

| Metric          | Value   |
| --------------- | ------- |
| Mean Price      | 292.72  |
| Median Price    | 165.84  |
| 75th Percentile | 360.34  |
| Maximum Price   | 2574.07 |

## Business Insight

The price distribution is heavily right-skewed.

Most products belong to lower and mid-price ranges, while a relatively small number of high-priced products increase the average price.

This pricing structure is typical for large e-commerce marketplaces where a few premium products coexist with a large volume of affordable products.

---

# Daily Activity Trend

## Observation

Daily event volume remained relatively stable during the first half of the month, followed by a significant spike between November 14 and November 17.

After this peak, activity returned to normal levels.

## Business Insight

The spike may indicate:

- Promotional campaigns
- Seasonal demand
- Marketing initiatives
- Platform-wide sales events

Further investigation is required to determine the root cause of this surge.

---

# Key Findings

1. User activity is heavily concentrated in product views.
2. The largest conversion drop occurs between View and Cart stages.
3. Cart-to-Purchase conversion is relatively strong.
4. Users demonstrate low average engagement per user.
5. The platform contains a large and diverse product catalog.
6. Product prices are predominantly concentrated in lower and mid-price ranges.
7. A significant activity spike was observed during mid-November.

---

# Next Steps

The following analyses will be conducted:

1. Daily Active Users (DAU)
2. Weekly Active Users (WAU)
3. Monthly Active Users (MAU)
4. User Retention Analysis
5. Cohort Analysis
6. Funnel Analysis
7. User Segmentation
8. Churn Prediction
9. Power BI Dashboard Development
10. Streamlit Application Development
