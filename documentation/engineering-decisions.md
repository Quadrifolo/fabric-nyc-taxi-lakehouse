 # Engineering Decisions

## 1. Microsoft Fabric Lakehouse

### Decision
Use a Microsoft Fabric Lakehouse as the primary analytical storage layer.

### Reason
The project required support for raw Parquet files, Spark-based transformations, Delta tables and SQL analytics within a single platform.

### Trade-off
A Warehouse could provide a more traditional relational experience, but the Lakehouse better supports the Bronze/Silver/Gold workflow and PySpark transformations used in this project.


## 2. Medallion Architecture

### Decision
Organise the solution into Bronze, Silver and Gold layers.

### Reason
This separates raw ingestion, data-quality processing and business-ready analytics.

- Bronze preserves the source data.
- Silver contains cleaned, validated and enriched trip-level data.
- Gold contains aggregated datasets designed for reporting.

### Benefit
The Power BI layer remains lightweight because cleansing and business transformation logic is handled upstream.


## 3. Parquet for Bronze

### Decision
Preserve the source NYC Taxi dataset in Parquet format.

### Reason
Parquet is columnar, compressed and well suited to analytical workloads in Spark.


## 4. Delta Tables for Silver and Gold

### Decision
Persist Silver and Gold datasets as Delta tables.

### Reason
Delta provides table semantics on top of data lake storage and integrates well with Fabric, Spark and the SQL Analytics Endpoint.


## 5. PySpark for Transformation

### Decision
Use PySpark for Silver cleansing and Gold transformations.

### Reason
PySpark provides a scalable DataFrame API for filtering, enrichment, aggregation and writing Delta tables.

Spark SQL was used primarily during initial profiling because SQL was convenient for exploratory analysis.


## 6. Business Logic Upstream

### Decision
Perform cleaning, enrichment and major aggregations before Power BI.

### Reason
The reporting layer should consume trusted, business-ready datasets rather than repeat data-engineering logic in DAX or Power Query.

### Result
Only lightweight Power BI measures were required.


## 7. Separate Gold Datasets

### Decision
Create separate Gold tables for:
- Vendor performance
- Daily trip performance
- Hourly demand
- Fare analysis

### Reason
Each table is designed around a specific business question and has an appropriate grain for reporting.


## 8. SQL Analytics Endpoint

### Decision
Expose Gold Delta tables through the Fabric SQL Analytics Endpoint.

### Reason
This allows validation and business queries to be performed using familiar T-SQL syntax and provides a SQL consumption layer for downstream analytics.


## 9. Current Limitations

The solution currently uses:
- Manual source-file ingestion
- One monthly source file
- Batch processing
- No orchestration
- No incremental loading
- No automated monitoring

These are intentional limitations of Project 1 and will be addressed in a future automated data-engineering project.