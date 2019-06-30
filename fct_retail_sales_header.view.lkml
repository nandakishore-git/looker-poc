view: fct_retail_sales_header {
  sql_table_name: etl_data_mart.fct_retail_sales_header ;;

  dimension: airport_short_name {
    type: string
    sql: ${TABLE}.AIRPORT_SHORT_NAME ;;
  }

  dimension: cashier {
    type: string
    sql: ${TABLE}.CASHIER ;;
  }

  dimension: cdm_dim_customer_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_CUSTOMER_DWK ;;
  }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
  }

  dimension: cdm_dim_time_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_TIME_DWK ;;
  }

  dimension: consumer_dwk {
    type: number
    sql: ${TABLE}.CONSUMER_DWK ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: destination_zone {
    type: string
    sql: ${TABLE}.DESTINATION_ZONE ;;
  }

  dimension: dim_airport_dwk {
    type: number
    sql: ${TABLE}.DIM_AIRPORT_DWK ;;
  }

  dimension: dim_flight_dwk {
    type: number
    sql: ${TABLE}.DIM_FLIGHT_DWK ;;
  }

  dimension: dim_store_dwk {
    type: number
    sql: ${TABLE}.DIM_STORE_DWK ;;
  }

  dimension: discount_header {
    type: number
    sql: ${TABLE}.DISCOUNT_HEADER ;;
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

  dimension: fct_retail_sales_header_dwk {
    type: string
    sql: ${TABLE}.FCT_RETAIL_SALES_HEADER_DWK ;;
  }

  dimension: flight_code {
    type: string
    sql: ${TABLE}.FLIGHT_CODE ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
  }

  dimension: geo_flag {
    type: number
    sql: ${TABLE}.GEO_FLAG ;;
  }

  dimension: net_sales_header_values {
    type: number
    sql: ${TABLE}.NET_SALES_HEADER_VALUES ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  dimension: store_code {
    type: string
    sql: ${TABLE}.STORE_CODE ;;
  }

  dimension: tax_header {
    type: number
    sql: ${TABLE}.TAX_HEADER ;;
  }

  dimension: till_no {
    type: string
    sql: ${TABLE}.TILL_NO ;;
  }

  dimension_group: trans {
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
    sql: ${TABLE}.TRANS_DATE ;;
  }

  dimension: trans_no {
    type: string
    sql: ${TABLE}.TRANS_NO ;;
  }

  dimension: trans_time {
    type: string
    sql: ${TABLE}.TRANS_TIME ;;
  }

  dimension: trans_type {
    type: number
    sql: ${TABLE}.TRANS_TYPE ;;
  }

  dimension: voucher_amt {
    type: number
    sql: ${TABLE}.VOUCHER_AMT ;;
  }

  dimension: voucher_code {
    type: string
    sql: ${TABLE}.VOUCHER_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name, airport_short_name]
  }
}
