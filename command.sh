# create virtual environment
python -m venv dbt-env

# activate virtual environment on windows
dbt-env\Scripts\activate

## Installing dbt-snowflake adapter, installs dbt-core and other dependencies.
pip install dbt-snowflake 

## create dbt project
dbt init <dbt project name>

## Initialize a git project
git init

## check for issues with setup
cd <dbt project name>
dbt debug

# run command again to ensure that all checks passed
dbt debug

# create tables in staging layer as views
dbt run --full-refresh

# update a particular table in a particular model
dbt run -m staging.stg_orders
dbt run -m dimensions.dim_customers
dbt run -m facts.facts_orders