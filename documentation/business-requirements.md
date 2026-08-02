# Business Requirements

## Background

A transport analytics team receives monthly NYC Green Taxi trip data in Parquet format.

The raw data contains operational, distance, fare, passenger and timestamp information. Analysts currently need to manually inspect and prepare the data before producing reports.

## Objective

Build a Microsoft Fabric lakehouse solution that stores, profiles, cleans, models and presents taxi trip data for analytics.

## Business Questions

The solution should answer:

- How many trips are recorded?
- Which vendors complete the most trips?
- What is the average and maximum trip distance?
- What is the average fare and total amount?
- What are the busiest pickup hours?
- How does trip volume change by date?
- Are there missing, duplicate or invalid records?

## Functional Requirements

- Store raw Parquet data in a Fabric Lakehouse.
- Profile the raw dataset using Spark SQL.
- Clean and validate the data using PySpark.
- Store cleansed data as Delta tables.
- Create business-ready Gold tables.
- Query the data through the SQL Analytics Endpoint.
- Build a Power BI dashboard.

## Success Criteria

- No duplicate rows in the Silver table.
- Invalid negative fares and trip distances are removed.
- Core business metrics are available through SQL.
- The Power BI report refreshes from the Fabric model.
- The solution is documented and published to GitHub.