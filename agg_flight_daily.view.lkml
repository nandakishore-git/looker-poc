view: agg_flight_daily {
  sql_table_name: etl_data_mart.agg_flight_daily ;;

  dimension: actual_income_cp {
    type: number
    sql: ${TABLE}.ACTUAL_INCOME_CP ;;
  }

  dimension: actual_income_lp {
    type: number
    sql: ${TABLE}.ACTUAL_INCOME_LP ;;
  }

  dimension: actual_pax_cp {
    type: number
    sql: ${TABLE}.ACTUAL_PAX_CP ;;
  }

  dimension: actual_sales_cp {
    type: number
    sql: ${TABLE}.ACTUAL_SALES_CP ;;
  }

  dimension: actual_sales_lp {
    type: number
    sql: ${TABLE}.ACTUAL_SALES_LP ;;
  }

  dimension: actual_trans_count_cp {
    type: number
    sql: ${TABLE}.ACTUAL_TRANS_COUNT_CP ;;
  }

  dimension: actual_trans_count_lp {
    type: number
    sql: ${TABLE}.ACTUAL_TRANS_COUNT_LP ;;
  }

  dimension: agg_flight_daily_dwk {
    type: number
    sql: ${TABLE}.AGG_FLIGHT_DAILY_DWK ;;
  }

  dimension: airline_name {
    type: string
    sql: ${TABLE}.AIRLINE_NAME ;;
  }

  dimension: bound_id {
    type: string
    sql: ${TABLE}.BOUND_ID ;;
  }

  dimension: cdm_dim_customer_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_CUSTOMER_DWK ;;
  }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
  }

  dimension: dest_airport_id {
    type: string
    sql: ${TABLE}.DEST_AIRPORT_ID ;;
  }

  dimension: dim_customer_traffic_dwk {
    type: number
    sql: ${TABLE}.DIM_CUSTOMER_TRAFFIC_DWK ;;
  }

  dimension: dim_flight_dwk {
    type: number
    sql: ${TABLE}.DIM_FLIGHT_DWK ;;
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

  dimension: gate_id {
    type: string
    sql: ${TABLE}.GATE_ID ;;
  }

  dimension: int_flag {
    type: number
    sql: ${TABLE}.INT_FLAG ;;
  }

  dimension: org_airport_id {
    type: string
    sql: ${TABLE}.ORG_AIRPORT_ID ;;
  }

  dimension: origin_destination {
    type: string
    sql: ${TABLE}.ORIGIN_DESTINATION ;;
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
    drill_fields: [airline_name, store_name]
  }
}
