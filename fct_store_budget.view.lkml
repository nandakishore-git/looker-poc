view: fct_store_budget {
  sql_table_name: etl_data_mart.fct_store_budget ;;

  dimension: budget_income {
    type: number
    sql: ${TABLE}.BUDGET_INCOME ;;
  }

  dimension: budget_sales {
    type: number
    sql: ${TABLE}.BUDGET_SALES ;;
  }

  dimension: budget_trans_count {
    type: number
    sql: ${TABLE}.BUDGET_TRANS_COUNT ;;
  }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
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

  dimension: fct_store_budget_dwk {
    type: number
    sql: ${TABLE}.FCT_STORE_BUDGET_DWK ;;
  }

  dimension: forecast_income {
    type: number
    sql: ${TABLE}.FORECAST_INCOME ;;
  }

  dimension: forecast_sales {
    type: number
    sql: ${TABLE}.FORECAST_SALES ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.FREQUENCY ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.LOCATION ;;
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

  measure: count {
    type: count
    drill_fields: [store_name]
  }
}
