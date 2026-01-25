# Chinook Analytics

This project uses [dbt](https://www.getdbt.com/) to model and analyze the Chinook database.

## Project Overview

The project transforms raw data from the Chinook database into a dimensional model suitable for analytics.
It follows a standard dbt project structure with three layers:
- **Staging**: Cleaning and renaming raw tables.
- **Intermediate**: Complex transformations and joins.
- **Marts**: Final dimensional models (Facts and Dimensions).

## Prerequisites

- Python 3.8+
- PostgreSQL (Localhost)
- dbt-core
- dbt-postgres

## Setup

1.  **Clone the repository:**
    ```bash
    git clone <repository_url>
    cd Chinook_Analytics
    ```

2.  **Create and activate a virtual environment:**
    ```bash
    python3 -m venv venv
    source venv/bin/activate
    ```

3.  **Install dependencies:**
    ```bash
    pip install dbt-core dbt-postgres
    dbt deps
    ```

4.  **Load the Chinook data:**
    Ensure your PostgreSQL database is running. Run the provided SQL file to create the schema and load data.
    ```bash
    psql -h localhost -U [your_username] -d [your_database_name] -f data/Chinook_PostgreSql.sql
    ```

5.  **Configure `profiles.yml`:**
    Create a `profiles.yml` file in your `~/.dbt/` directory (or configure it within the project if you prefer).
    
    Example `profiles.yml`:
    ```yml
    chinook_analytics:
      target: dev
      outputs:
        dev:
          type: postgres
          host: localhost
          user: [your_username]
          password: [your_password]
          port: 5432
          dbname: [your_database_name]
          schema: public
          threads: 1
    ```

## Running dbt

-   **Test the connection:**
    ```bash
    dbt debug
    ```

-   **Run models:**
    ```bash
    dbt run
    ```

-   **Test models:**
    ```bash
    dbt test
    ```

## Documentation

To generate and view the project documentation:

```bash
dbt docs generate
dbt docs serve
```
