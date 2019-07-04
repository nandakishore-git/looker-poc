view: agg_store_actual_monthly {
  sql_table_name: etl_data_mart.agg_store_actual_monthly ;;
  ##sql_table_name: etl_data_mart.dim_store ;;

  set: Drill_fields {
    fields: [
      cdm_dim_date.calendar_year,
      store_name
    ]
  }

  dimension: actual_arrival_pax_cp {
    type: number
    sql: ${TABLE}.ACTUAL_ARRIVAL_PAX_CP ;;
  }

  dimension: actual_arrival_pax_lp {
    type: number
    sql: ${TABLE}.ACTUAL_ARRIVAL_PAX_LP ;;
  }

  dimension: actual_departure_pax_cp {
    type: number
    sql: ${TABLE}.ACTUAL_DEPARTURE_PAX_CP ;;
  }

  dimension: actual_departure_pax_lp {
    type: number
    sql: ${TABLE}.ACTUAL_DEPARTURE_PAX_LP ;;
  }

  dimension: actual_income_cp {
    type: number
    sql: ${TABLE}.ACTUAL_INCOME_CP ;;
  }

  dimension: actual_income_lp {
    type: number
    sql: ${TABLE}.ACTUAL_INCOME_LP ;;
  }

  dimension: actual_trans_count_cp {
    type: number
    sql: ${TABLE}.ACTUAL_TRANS_COUNT_CP ;;
  }

  dimension: actual_trans_count_lp {
    type: number
    sql: ${TABLE}.ACTUAL_TRANS_COUNT_LP ;;
  }

  dimension: agg_store_actual_monthly_dwk {
    type: number
    sql: ${TABLE}.AGG_STORE_ACTUAL_MONTHLY_DWK ;;
  }

  dimension: area_cp {
    type: number
    sql: ${TABLE}.AREA_CP ;;
  }

  dimension: area_lp {
    type: number
    sql: ${TABLE}.AREA_LP ;;
  }

  dimension: budget_trans_count_cp {
    type: number
    sql: ${TABLE}.BUDGET_TRANS_COUNT_CP ;;
  }

  dimension: budget_trans_count_lp {
    type: number
    sql: ${TABLE}.BUDGET_TRANS_COUNT_LP ;;
  }

  dimension: cdm_dim_customer_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_CUSTOMER_DWK ;;
  }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
  }

  dimension: cdm_dim_recontract_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_RECONTRACT_DWK ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
  }

  dimension: cust_name {
    type: string
    sql: ${TABLE}.CUST_NAME ;;
  }

  dimension: dim_store_dwk {
    type: number
    sql: ${TABLE}.DIM_STORE_DWK ;;
  }

  dimension_group: dm_load {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DM_LOAD_DATE ;;
  }

  dimension: dm_load_delta_id {
    type: number
    sql: ${TABLE}.DM_LOAD_DELTA_ID ;;
  }

  dimension_group: dm_update {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DM_UPDATE_DATE ;;
  }

  dimension: dm_update_delta_id {
    type: number
    sql: ${TABLE}.DM_UPDATE_DELTA_ID ;;
  }

  dimension: forecast_arrival_pax_cp {
    type: number
    sql: ${TABLE}.FORECAST_ARRIVAL_PAX_CP ;;
  }

  dimension: forecast_arrival_pax_lp {
    type: number
    sql: ${TABLE}.FORECAST_ARRIVAL_PAX_LP ;;
  }

  dimension: forecast_departure_pax_cp {
    type: number
    sql: ${TABLE}.FORECAST_DEPARTURE_PAX_CP ;;
  }

  dimension: forecast_departure_pax_lp {
    type: number
    sql: ${TABLE}.FORECAST_DEPARTURE_PAX_LP ;;
  }

  dimension: forecast_income_cp {
    type: number
    sql: ${TABLE}.FORECAST_INCOME_CP ;;
  }

  dimension: forecast_income_lp {
    type: number
    sql: ${TABLE}.FORECAST_INCOME_LP ;;
  }

  dimension: forecast_sales_cp {
    type: number
    sql: ${TABLE}.FORECAST_SALES_CP ;;
  }

  dimension: forecast_sales_lp {
    type: number
    sql: ${TABLE}.FORECAST_SALES_LP ;;
  }

  dimension: period_no {
    type: number
    sql: ${TABLE}.PERIOD_NO ;;
  }

  dimension_group: period_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PERIOD_START_DATE ;;
  }

  dimension: recontract {
    type: string
    sql: ${TABLE}.RECONTRACT ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  dimension: store_code {
    type: string
    sql: ${TABLE}.STORE_CODE ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.STORE_NAME ;;
  }

  measure: actual_sales_cp {
    type: sum
    value_format: "0.00,,\" M\""
    drill_fields: [Drill_fields*]#[store_name,cdm_dim_date_dwk]
    sql: ${TABLE}.ACTUAL_SALES_CP ;;
  }

  measure: actual_sales_lp {
    type: sum
    value_format: "0.00,,\" M\""
    sql: ${TABLE}.ACTUAL_SALES_LP ;;
  }

  measure: actual_sales_var {
    type: sum
    value_format: "0.00,,\" M\""
    sql: ${TABLE}.ACTUAL_SALES_CP - ${TABLE}.ACTUAL_SALES_LP  ;;
  }

  measure: budget_sales_cp {
    type: sum
    value_format: "0.00,,\" M\""
    sql: ${TABLE}.BUDGET_SALES_CP ;;
   ## filters: {
   ##   field: cdm_dim_date_dwk
    ##  value: "2019^%"
    ##}
  }

  measure: budget_sales_lp {
    type: sum
    value_format: "0.00,,\" M\""
    sql: ${TABLE}.BUDGET_SALES_LP ;;
  }

  measure: count {
    type: count
    drill_fields: [store_name, cust_name]
  }
}
