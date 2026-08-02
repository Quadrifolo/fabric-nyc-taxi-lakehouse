x-- NYC Green Taxi raw data exploration
-- Executed using Spark SQL in Microsoft Fabric

-- Total number of trips
SELECT
    COUNT(*) AS TotalTrips
FROM parquet.`Files/green_tripdata_2026-01.parquet`;

-- Vendor summary
SELECT
    VendorID,
    COUNT(*) AS NumberOfTrips,
    ROUND(AVG(trip_distance), 2) AS AverageTripDistance,
    ROUND(MAX(trip_distance), 2) AS LongestTripDistance,
    ROUND(AVG(fare_amount), 2) AS AverageFareAmount,
    ROUND(AVG(total_amount), 2) AS AverageTotalAmount
FROM parquet.`Files/green_tripdata_2026-01.parquet`
GROUP BY VendorID
ORDER BY NumberOfTrips DESC;

-- Potentially invalid records
SELECT
    COUNT(*) AS InvalidTripCount
FROM parquet.`Files/green_tripdata_2026-01.parquet`
WHERE trip_distance <= 0
   OR fare_amount < 0
   OR total_amount < 0
   OR passenger_count < 0;