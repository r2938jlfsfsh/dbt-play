# dbt-play

gcloud auth application-default login

gcloud storage buckets create gs://my-project-1501917831054-testdata --project my-project-1501917831054 --location australia-southeast2

gsutil cp playproj/data/*.csv gs://my-project-1501917831054-testdata/raw_src/

bq load --field_delimiter=',' --replace=true --source_format=CSV raw_src.t1 gs://my-project-1501917831054-testdata/raw_src/t1.csv
bq load --field_delimiter=',' --replace=true --source_format=CSV raw_src.t2 gs://my-project-1501917831054-testdata/raw_src/t2.csv

cd playproj
dbt run