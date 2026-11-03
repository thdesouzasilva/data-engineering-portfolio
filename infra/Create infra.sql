-- Catalogo principal
CREATE CATALOG IF NOT EXISTS dev_nyc_taxi_portfolio;

-- Schema de origem dos arquivos raw
CREATE SCHEMA IF NOT EXISTS dev_nyc_taxi_portfolio.landing;

-- Schema broze
CREATE SCHEMA IF NOT EXISTS dev_nyc_taxi_portfolio.bronze;
-- Schema silver
CREATE SCHEMA IF NOT EXISTS dev_nyc_taxi_portfolio.silver;
-- Schema gold
CREATE SCHEMA IF NOT EXISTS dev_nyc_taxi_portfolio.gold;

-- 3. Volume apontando pro bucket s3 onde chegaram os arquivos de taxi
CREATE EXTERNAL VOLUME IF NOT EXISTS dev_nyc_taxi_portfolio.landing.raw_files
LOCATION 's3://data-enginnering-portfolio/raw/';