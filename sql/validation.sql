/*
Gold Layer Validation
*/


-- Silver row count
SELECT COUNT(*) AS SilverTrips
FROM dbo.silver_green_taxi_trips;


-- Gold trip reconciliation
SELECT SUM(TotalTrips) AS GoldTrips
FROM dbo.gold_daily_trip_summary;


-- Silver revenue
SELECT ROUND(SUM(total_amount), 2) AS SilverRevenue
FROM dbo.silver_green_taxi_trips;


-- Gold revenue
SELECT ROUND(SUM(TotalRevenue), 2) AS GoldRevenue
FROM dbo.gold_daily_trip_summary;x