connection: "local_gm"

# include all the views
include: "*.view"

datagroup: retail_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: retail_default_datagroup

explore: agg_flight_daily {}

explore: agg_flight_monthly {}

explore: agg_gender_daily {}

explore: agg_gender_monthly {}

explore: agg_kpi_daily {}

explore: agg_kpi_monthly {}

explore: agg_kpi_pax_daily {}

explore: agg_kpi_weekly {}

explore: agg_store_actual_monthly {
  view_name: agg_store_actual_monthly
  join: cdm_dim_date {
    type: left_outer
    relationship: many_to_one
    sql_on: ${agg_store_actual_monthly.cdm_dim_date_dwk} = ${cdm_dim_date.cdm_dim_date_dwk} ;;
  }
}

explore: agg_store_daily {}

explore: agg_store_hourly {}

explore: agg_store_pax_daily {}

explore: agg_store_product_daily {}

explore: agg_store_product_monthly {}

explore: agg_store_weekly {}

explore: agg_stores_dcs_daily {}

explore: cdm_dim_customer {}

explore: cdm_dim_date {}

explore: cdm_dim_kpi_retail {}

explore: cdm_dim_terminal {}

explore: cdm_dim_time {}

explore: dim_airport {}

explore: dim_com_retailer_product {}

explore: dim_consumer {}

explore: dim_contract_margin_grading {}

explore: dim_customer_traffic {}

explore: dim_flight {}

explore: dim_gate {}

explore: dim_retailer_product {}

explore: dim_store {}

explore: etl_history {}

explore: fct_avr_daily {}

explore: fct_flight {}

explore: fct_income_monthly {}

explore: fct_retail_sales_header {}

explore: fct_retail_sales_line {}

explore: fct_store_area {}

explore: fct_store_budget {}

explore: intra_day_data {}

explore: sales_report_header_validation {}

explore: sales_view {}
