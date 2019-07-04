view: agg_kpi_weekly {
  sql_table_name: etl_data_mart.agg_kpi_weekly ;;

  dimension: actual_avg_sales_cp {
    type: number
    sql: ${TABLE}.ACTUAL_AVG_SALES_CP ;;
  }

  dimension: actual_avg_sales_lp {
    type: number
    sql: ${TABLE}.ACTUAL_AVG_SALES_LP ;;
  }

  dimension: actual_conversion_cp {
    type: number
    sql: ${TABLE}.ACTUAL_CONVERSION_CP ;;
  }

  dimension: actual_conversion_lp {
    type: number
    sql: ${TABLE}.ACTUAL_CONVERSION_LP ;;
  }

  dimension: actual_sales_cp {
    type: number
    sql: ${TABLE}.ACTUAL_SALES_CP ;;
  }

  dimension: actual_sales_lp {
    type: number
    sql: ${TABLE}.ACTUAL_SALES_LP ;;
  }

  dimension: actual_sales_per_pax_cp {
    type: number
    sql: ${TABLE}.ACTUAL_SALES_PER_PAX_CP ;;
  }

  dimension: actual_sales_per_pax_lp {
    type: number
    sql: ${TABLE}.ACTUAL_SALES_PER_PAX_LP ;;
  }

  dimension: actual_sales_per_sqm_cp {
    type: number
    sql: ${TABLE}.ACTUAL_SALES_PER_SQM_CP ;;
  }

  dimension: actual_sales_per_sqm_lp {
    type: number
    sql: ${TABLE}.ACTUAL_SALES_PER_SQM_LP ;;
  }

  dimension: actual_transaction_cp {
    type: number
    sql: ${TABLE}.ACTUAL_TRANSACTION_CP ;;
  }

  dimension: actual_transaction_lp {
    type: number
    sql: ${TABLE}.ACTUAL_TRANSACTION_LP ;;
  }

  dimension: agg_kpi_weekly_dwk {
    type: number
    sql: ${TABLE}.AGG_KPI_WEEKLY_DWK ;;
  }

  dimension: budget_avg_sales_cp {
    type: number
    sql: ${TABLE}.BUDGET_AVG_SALES_CP ;;
  }

  dimension: budget_avg_sales_lp {
    type: number
    sql: ${TABLE}.BUDGET_AVG_SALES_LP ;;
  }

  dimension: budget_conversion_cp {
    type: number
    sql: ${TABLE}.BUDGET_CONVERSION_CP ;;
  }

  dimension: budget_conversion_lp {
    type: number
    sql: ${TABLE}.BUDGET_CONVERSION_LP ;;
  }

  dimension: budget_sales_cp {
    type: number
    sql: ${TABLE}.BUDGET_SALES_CP ;;
  }

  dimension: budget_sales_lp {
    type: number
    sql: ${TABLE}.BUDGET_SALES_LP ;;
  }

  dimension: budget_sales_per_pax_cp {
    type: number
    sql: ${TABLE}.BUDGET_SALES_PER_PAX_CP ;;
  }

  dimension: budget_sales_per_pax_lp {
    type: number
    sql: ${TABLE}.BUDGET_SALES_PER_PAX_LP ;;
  }

  dimension: budget_sales_per_sqm_cp {
    type: number
    sql: ${TABLE}.BUDGET_SALES_PER_SQM_CP ;;
  }

  dimension: budget_sales_per_sqm_lp {
    type: number
    sql: ${TABLE}.BUDGET_SALES_PER_SQM_LP ;;
  }

  dimension: budget_transaction_cp {
    type: number
    sql: ${TABLE}.BUDGET_TRANSACTION_CP ;;
  }

  dimension: budget_transaction_lp {
    type: number
    sql: ${TABLE}.BUDGET_TRANSACTION_LP ;;
  }

  dimension: cdm_dim_date_dwk {
    type: string
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
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
    type: string
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
    type: string
    sql: ${TABLE}.DM_UPDATE_DELTA_ID ;;
  }

  dimension: kpi_id {
    type: number
    sql: ${TABLE}.KPI_ID ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  dimension: week_no {
    type: number
    sql: ${TABLE}.WEEK_NO ;;
  }

  dimension_group: week_start {
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
    sql: ${TABLE}.WEEK_START_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
