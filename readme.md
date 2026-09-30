<<<<<<< HEAD
# NYC Green Taxi Lakehouse Analytics

End-to-end Microsoft Fabric data engineering project using a Medallion
Architecture to transform NYC Green Taxi data into business-ready
analytics and Power BI reporting.

## Project Overview

Briefly explain:
- Dataset: NYC Green Taxi
- What you wanted to analyse " 
- What you built
- What the final output is

## Architecture

[Architecture diagram here]

NYC Taxi Parquet
→ OneLake / Fabric Lakehouse
→ Bronze
→ Silver
→ Gold
→ SQL Analytics Endpoint
→ Power BI

## Technology Stack

- Microsoft Fabric
- OneLake / Lakehouse
- Apache Spark
- PySpark
- Spark SQL
- T-SQL
- Delta Lake
- Power BI
- Git / GitHub

## Business Requirements

The solution was designed to answer questions such as:

- How many taxi trips occurred?
- How does revenue change over time?
- When is demand highest?
- How do vendors compare?
- What are the average fare, distance and duration?
- How does revenue per mile vary between vendors?

See: `documentation/business-requirements.md`

## Data Architecture

### Bronze — Raw

The original NYC Green Taxi Parquet dataset was preserved in the
Lakehouse without business transformations.

Purpose:
- Preserve source data
- Enable reproducibility
- Provide the starting point for processing

### Silver — Cleaned & Validated

PySpark was used to prepare trip-level data.

Processing included:
- Null handling
- Duplicate removal
- Invalid distance filtering
- Negative fare validation
- Timestamp validation
- Data type standardisation
- Derived fields

Output:
`silver_green_taxi_trips`

### Gold — Business Ready

Silver data was aggregated into datasets designed around analytical
requirements.

Gold tables included:

- `gold_daily_trip_summary`
- `gold_vendor_performance`
- `gold_hourly_demand`
- `gold_fare_analysis`

This allowed Power BI to consume business-ready data with minimal
additional transformation logic.

## Data Quality & Testing

Testing was performed throughout the Medallion pipeline.

Bronze → Silver:
- Duplicate validation
- Distance validation
- Fare validation
- Timestamp validation

Silver → Gold:
- Trip count reconciliation
- Revenue reconciliation

Gold → Power BI:
- KPI reconciliation

See: `documentation/testing.md`

## Power BI Dashboard

### Executive Overview

![NYC Taxi Executive Overview](power-bi/screenshots/Executive%20Overivew.png)

Provides:
- Total Trips
- Total Revenue
- Average Fare
- Average Trip Distance
- Average Trip Duration
- Daily revenue trends
- Daily trip volume
- Hourly demand
- Revenue by vendor

### Vendor & Fare Analysis

![Vendor & Fare Analysis](power-bi/screenshots/Vendor%20&%20Fare%20Analysis.png)

Provides:
- Trips by vendor
- Revenue by vendor
- Average fare by vendor
- Revenue per mile
- Vendor comparison

## Engineering Decisions

Key design decisions included:

- Lakehouse architecture for combined file and table workloads
- Medallion architecture for separation of concerns
- Delta tables for Silver and Gold
- PySpark for transformation
- Gold-layer business aggregations
- Lightweight Power BI semantic/reporting layer

See: `documentation/engineering-decisions.md`

## Key Insights

Put 3–5 actual findings from your finished dashboard here.

For example:
- Vendor 2 accounted for the majority of trip volume and revenue.
- Taxi demand varied significantly by pickup hour.
- Vendor performance differed substantially in revenue per mile.

Use your validated numbers here rather than generic statements.

## Lessons Learned

- Bronze, Silver and Gold provide clear separation between raw,
  validated and business-ready data.
- Performing transformation upstream reduces unnecessary complexity
  in Power BI.
- Understanding table grain is critical when designing Gold tables
  and Power BI measures.
- Silver-to-Gold reconciliation is important for identifying
  unexpected data loss or duplication.
- PySpark and SQL complement each other well for transformation,
  exploration and validation.

## Limitations & Future Improvements

Project 1 intentionally uses a relatively simple batch architecture.

Current limitations:
- Manual source ingestion
- Single source
- No orchestration
- No incremental loading
- No automated failure handling
- Limited monitoring

Future improvements:
- Fabric Pipelines
- API ingestion
- Incremental processing
- Scheduling
- Parameterisation
- Automated quality checks
- Logging and monitoring
- CI/CD
- DEV / TEST / PROD environments

These improvements form the basis of Project 2.

## Repository Structure

fabric-nyc-taxi-lakehouse/
├── README.md
├── architecture/
├── notebooks/
├── sql/
├── documentation/
├── power-bi/
└── images/

## Data Source

NYC Taxi & Limousine Commission — Green Taxi Trip Records

The source dataset is not stored in this repository.
Instructions/link for obtaining the dataset are provided here.

## How to Reproduce

1. Create a Microsoft Fabric Lakehouse.
2. Download the NYC Green Taxi Parquet dataset.
3. Upload the source file to the Bronze/Files area.
4. Run the exploration notebook.
5. Run the Silver/Gold transformation notebook.
6. Validate the generated Delta tables.
7. Connect the Gold layer to Power BI.
=======
# NYC Green Taxi Lakehouse Analytics

End-to-end Microsoft Fabric data engineering project using a Medallion
Architecture to transform NYC Green Taxi data into business-ready
analytics and Power BI reporting.

## Project Overview

Briefly explain:
- Dataset: NYC Green Taxi
- What you wanted to analyse " 
- What you built
- What the final output is

## Architecture

(images/ProjectOverview.png)

NYC Taxi Parquet
→ OneLake / Fabric Lakehouse
→ Bronze
→ Silver
→ Gold
→ SQL Analytics Endpoint
→ Power BI

## Technology Stack

- Microsoft Fabric
- OneLake / Lakehouse
- Apache Spark
- PySpark
- Spark SQL
- T-SQL
- Delta Lake
- Power BI
- Git / GitHub

## Business Requirements

The solution was designed to answer questions such as:

- How many taxi trips occurred?
- How does revenue change over time?
- When is demand highest?
- How do vendors compare?
- What are the average fare, distance and duration?
- How does revenue per mile vary between vendors?

See: `documentation/business-requirements.md`

## Data Architecture

### Bronze — Raw

The original NYC Green Taxi Parquet dataset was preserved in the
Lakehouse without business transformations.

Purpose:
- Preserve source data
- Enable reproducibility
- Provide the starting point for processing

### Silver — Cleaned & Validated

PySpark was used to prepare trip-level data.

Processing included:
- Null handling
- Duplicate removal
- Invalid distance filtering
- Negative fare validation
- Timestamp validation
- Data type standardisation
- Derived fields

Output:
`silver_green_taxi_trips`

### Gold — Business Ready

Silver data was aggregated into datasets designed around analytical
requirements.

Gold tables included:

- `gold_daily_trip_summary`
- `gold_vendor_performance`
- `gold_hourly_demand`
- `gold_fare_analysis`

This allowed Power BI to consume business-ready data with minimal
additional transformation logic.

## Data Quality & Testing

Testing was performed throughout the Medallion pipeline.

Bronze → Silver:
- Duplicate validation
- Distance validation
- Fare validation
- Timestamp validation

Silver → Gold:
- Trip count reconciliation
- Revenue reconciliation

Gold → Power BI:
- KPI reconciliation

See: `documentation/testing.md`

## Power BI Dashboard

### Executive Overview

![NYC Taxi Executive Overview](power-bi/screenshots/Executive%20Overivew.png)
Provides:
- Total Trips
- Total Revenue
- Average Fare
- Average Trip Distance
- Average Trip Duration
- Daily revenue trends
- Daily trip volume
- Hourly demand
- Revenue by vendor

### Vendor & Fare Analysis

![Vendor & Fare Analysis](power-bi/screenshots/Vendor%20&%20Fare%20Analysis.png)

Provides:
- Trips by vendor
- Revenue by vendor
- Average fare by vendor
- Revenue per mile
- Vendor comparison

## Engineering Decisions

Key design decisions included:

- Lakehouse architecture for combined file and table workloads
- Medallion architecture for separation of concerns
- Delta tables for Silver and Gold
- PySpark for transformation
- Gold-layer business aggregations
- Lightweight Power BI semantic/reporting layer

See: `documentation/engineering-decisions.md`

## Key Insights

Put 3–5 actual findings from your finished dashboard here.

For example:
- Vendor 2 accounted for the majority of trip volume and revenue.
- Taxi demand varied significantly by pickup hour.
- Vendor performance differed substantially in revenue per mile.

Use your validated numbers here rather than generic statements.

## Lessons Learned

- Bronze, Silver and Gold provide clear separation between raw,
  validated and business-ready data.
- Performing transformation upstream reduces unnecessary complexity
  in Power BI.
- Understanding table grain is critical when designing Gold tables
  and Power BI measures.
- Silver-to-Gold reconciliation is important for identifying
  unexpected data loss or duplication.
- PySpark and SQL complement each other well for transformation,
  exploration and validation.

## Limitations & Future Improvements

Project 1 intentionally uses a relatively simple batch architecture.

Current limitations:
- Manual source ingestion
- Single source
- No orchestration
- No incremental loading
- No automated failure handling
- Limited monitoring

Future improvements:
- Fabric Pipelines
- API ingestion
- Incremental processing
- Scheduling
- Parameterisation
- Automated quality checks
- Logging and monitoring
- CI/CD
- DEV / TEST / PROD environments

These improvements form the basis of Project 2.

## Repository Structure

fabric-nyc-taxi-lakehouse/
├── README.md
├── architecture/
├── notebooks/
├── sql/
├── documentation/
├── power-bi/
└── images/

## Data Source

NYC Taxi & Limousine Commission — Green Taxi Trip Records

The source dataset is not stored in this repository.
Instructions/link for obtaining the dataset are provided here.

## How to Reproduce

1. Create a Microsoft Fabric Lakehouse.
2. Download the NYC Green Taxi Parquet dataset.
3. Upload the source file to the Bronze/Files area.
4. Run the exploration notebook.
5. Run the Silver/Gold transformation notebook.
6. Validate the generated Delta tables.
7. Connect the Gold layer to Power BI.
>>>>>>> 6b3ca07 (new png)
