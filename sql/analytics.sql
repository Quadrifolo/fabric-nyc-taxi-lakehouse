/*
NYC Green Taxi Lakehouse
Gold Layer Business Analytics

Purpose:
Provide reusable analytical queries against the
Microsoft Fabric Gold layer.
*/


-- =============================================
-- 1. Vendor Performance
-- =============================================

SELECT
    VendorID,
    TotalTrips,
    TotalRevenue,
    AverageFare,
    AverageTripDistance,
    AverageRevenuePerMile
FROM dbo.gold_vendor_performance
ORDER BY TotalRevenue DESC;


-- =============================================
-- 2. Daily Performance
-- =============================================

SELECT
    pickup_date,
    TotalTrips,
    TotalRevenue,
    AverageFare,
    AverageTripDistance,
    AverageTripDurationMinutes
FROM dbo.gold_daily_trip_summary
ORDER BY pickup_date;


-- =============================================
-- 3. Hourly Demand
-- =============================================

SELECT
    pickup_hour,
    TotalTrips,
    TotalRevenue
FROM dbo.gold_hourly_demand
ORDER BY pickup_hour;