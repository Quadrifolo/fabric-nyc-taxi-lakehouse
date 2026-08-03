| Column                  | Data Type | Description                                                       | Example             | Business Rule                                   |
| ----------------------- | --------- | ----------------------------------------------------------------- | ------------------- | ----------------------------------------------- |
| `VendorID`              | Integer   | Identifier of the taxi vendor responsible for the trip.           | 1                   | Cannot be NULL. Must match a valid vendor.      |
| `passenger_count`       | Integer   | Number of passengers travelling.                                  | 2                   | Must be ≥ 0. Null values require investigation. |
| `trip_distance`         | Decimal   | Distance travelled in miles.                                      | 5.8                 | Must be > 0. Extreme values should be reviewed. |
| `fare_amount`           | Decimal   | Base fare before additional charges.                              | 18.50               | Cannot be negative.                             |
| `tip_amount`            | Decimal   | Tip paid by the passenger.                                        | 3.00                | Cannot be negative.                             |
| `total_amount`          | Decimal   | Total amount charged including taxes, tolls, surcharges and tips. | 25.90               | Should be ≥ `fare_amount`.                      |
| `payment_type`          | Integer   | Method of payment used.                                           | 1                   | Should match a valid payment type.              |
| `lpep_pickup_datetime`  | Timestamp | Date and time the trip started.                                   | 2026-01-01 08:15:00 | Must occur before the drop-off timestamp.       |
| `lpep_dropoff_datetime` | Timestamp | Date and time the trip ended.                                     | 2026-01-01 08:42:00 | Must occur after the pickup timestamp.          |
