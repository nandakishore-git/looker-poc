view: fct_retail_sales_line {
  sql_table_name: etl_data_mart.fct_retail_sales_line ;;

  dimension: airport_long_name {
    type: string
    sql: ${TABLE}.AIRPORT_LONG_NAME ;;
  }

  dimension: airport_short_name {
    type: string
    sql: ${TABLE}.AIRPORT_SHORT_NAME ;;
  }

  dimension: carrier_name {
    type: string
    sql: ${TABLE}.CARRIER_NAME ;;
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

  dimension: country_name {
    type: string
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: cust_gender {
    type: string
    sql: ${TABLE}.CUST_GENDER ;;
  }

  dimension: cust_nation {
    type: string
    sql: ${TABLE}.CUST_NATION ;;
  }

  dimension: cust_origin {
    type: string
    sql: ${TABLE}.CUST_ORIGIN ;;
  }

  dimension: destination_zone {
    type: string
    sql: ${TABLE}.DESTINATION_ZONE ;;
  }

  dimension: dim_airport_dwk {
    type: number
    sql: ${TABLE}.DIM_AIRPORT_DWK ;;
  }

  dimension: dim_com_retailer_product_dwk {
    type: number
    sql: ${TABLE}.DIM_COM_RETAILER_PRODUCT_DWK ;;
  }

  dimension: dim_flight_dwk {
    type: number
    sql: ${TABLE}.DIM_FLIGHT_DWK ;;
  }

  dimension: dim_product_dwk {
    type: string
    sql: ${TABLE}.DIM_PRODUCT_DWK ;;
  }

  dimension: dim_store_dwk {
    type: number
    sql: ${TABLE}.DIM_STORE_DWK ;;
  }

  dimension: discount_line {
    type: number
    sql: ${TABLE}.DISCOUNT_LINE ;;
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

  dimension: entered_flight_code {
    type: string
    sql: ${TABLE}.ENTERED_FLIGHT_CODE ;;
  }

  dimension: fct_retail_sales_header_dwk {
    type: string
    sql: ${TABLE}.FCT_RETAIL_SALES_HEADER_DWK ;;
  }

  dimension: fct_retail_sales_line_dwk {
    type: string
    sql: ${TABLE}.FCT_RETAIL_SALES_LINE_DWK ;;
  }

  dimension: flight_matching_flg {
    type: number
    sql: ${TABLE}.FLIGHT_MATCHING_FLG ;;
  }

  dimension: geo_flag {
    type: number
    sql: ${TABLE}.GEO_FLAG ;;
  }

  dimension: iata_carrier_code {
    type: string
    sql: ${TABLE}.IATA_CARRIER_CODE ;;
  }

  dimension: icao_carrier_code {
    type: string
    sql: ${TABLE}.ICAO_CARRIER_CODE ;;
  }

  dimension: net_sales_line_values {
    type: number
    sql: ${TABLE}.NET_SALES_LINE_VALUES ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.PRICE ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}.PRODUCT_CODE ;;
  }

  dimension: sale_quantity {
    type: number
    sql: ${TABLE}.SALE_QUANTITY ;;
  }

  dimension: shift_no {
    type: string
    sql: ${TABLE}.SHIFT_NO ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  dimension: store_code {
    type: string
    sql: ${TABLE}.STORE_CODE ;;
  }

  dimension: tax_line {
    type: number
    sql: ${TABLE}.TAX_LINE ;;
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

  dimension: transaction_after_flight_time {
    type: number
    sql: ${TABLE}.TRANSACTION_AFTER_FLIGHT_TIME ;;
  }

  measure: count {
    type: count
    drill_fields: [carrier_name, country_name, airport_long_name, airport_short_name]
  }
}
