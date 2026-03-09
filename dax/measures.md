-- =========================
-- BASIC KPI MEASURES
-- =========================

Total Revenue =
SUM(order_items[price]) + SUM(order_items[freight_value])

Total Orders =
DISTINCTCOUNT(orders[order_id])

Total Customers =
DISTINCTCOUNT(customers[customer_unique_id])

Average Order Value (AOV) =
DIVIDE([Total Revenue], [Total Orders])


-- =========================
-- DELIVERY PERFORMANCE
-- =========================

On-Time Orders =
CALCULATE(
    COUNTROWS(orders),
    orders[order_delivered_customer_date] <= orders[order_estimated_delivery_date]
)

Late Orders =
CALCULATE(
    COUNTROWS(orders),
    orders[order_delivered_customer_date] > orders[order_estimated_delivery_date]
)

On-Time Delivery % =
DIVIDE([On-Time Orders], COUNTROWS(orders))

Late Delivery % =
DIVIDE([Late Orders], COUNTROWS(orders))


-- =========================
-- CUSTOMER ANALYTICS
-- =========================

Customer Orders =
CALCULATE(
    COUNT(orders[order_id]),
    ALLEXCEPT(customers, customers[customer_unique_id])
)

Repeat Customers =
CALCULATE(
    DISTINCTCOUNT(customers[customer_unique_id]),
    FILTER(
        VALUES(customers[customer_unique_id]),
        CALCULATE(COUNT(orders[order_id])) > 1
    )
)

Repeat Customer % =
DIVIDE([Repeat Customers], [Total Customers])


-- =========================
-- REVIEW ANALYSIS
-- =========================

Avg Review Score =
AVERAGE(reviews[review_score])

5 Star Rate =
DIVIDE(
    CALCULATE(
        COUNTROWS(reviews),
        reviews[review_score] = 5
    ),
    COUNTROWS(reviews)
)

1-2 Star Rate =
DIVIDE(
    CALCULATE(
        COUNTROWS(reviews),
        reviews[review_score] <= 2
    ),
    COUNTROWS(reviews)
)


-- =========================
-- SELLER ANALYSIS
-- =========================

Active Sellers =
DISTINCTCOUNT(order_items[seller_id])

Avg Revenue per Seller =
DIVIDE([Total Revenue], [Active Sellers])


-- =========================
-- MONTH OVER MONTH GROWTH
-- =========================

Previous Month Revenue =
CALCULATE(
    [Total Revenue],
    DATEADD('Date Table'[Date], -1, MONTH)
)

MoM Growth % =
DIVIDE(
    [Total Revenue] - [Previous Month Revenue],
    [Previous Month Revenue]
)

MoM Arrow =
IF(
    [MoM Growth %] > 0,
    "▲",
    "▼"
)


-- =========================
-- DELIVERY TIME
-- =========================

Delivery Days =
DATEDIFF(
    orders[order_purchase_timestamp],
    orders[order_delivered_customer_date],
    DAY
)

Avg Delivery Days =
AVERAGE(orders[Delivery Days])


-- =========================
-- CANCELLATION RATE
-- =========================

Cancelled Orders =
CALCULATE(
    COUNTROWS(orders),
    orders[order_status] = "canceled"
)

Cancellation Rate =
DIVIDE([Cancelled Orders], [Total Orders])


-- =========================
-- CUSTOMER SPEND
-- =========================

Customer Spend =
SUM(order_items[price])

Customer Spend Bucket =
SWITCH(
    TRUE(),
    [Customer Spend] < 50, "<50",
    [Customer Spend] < 100, "50-100",
    [Customer Spend] < 200, "100-200",
    [Customer Spend] < 500, "200-500",
    "500+"
)
