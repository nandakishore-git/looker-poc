view: agg_store_product_daily {
  sql_table_name: etl_data_mart.agg_store_product_daily ;;

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

  dimension: agg_store_product_daily_dwk {
    type: string
    sql: ${TABLE}.AGG_STORE_PRODUCT_DAILY_DWK ;;
  }

  dimension: airline_name {
    type: string
    sql: ${TABLE}.AIRLINE_NAME ;;
  }

  dimension: area_cp {
    type: number
    sql: ${TABLE}.AREA_CP ;;
  }

  dimension: area_lp {
    type: number
    sql: ${TABLE}.AREA_LP ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.BRAND ;;
  }

  dimension: cdm_dim_customer_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_CUSTOMER_DWK ;;
  }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
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

  dimension: dest_airport_id {
    type: string
    sql: ${TABLE}.DEST_AIRPORT_ID ;;
  }

  dimension: dim_com_retailer_product_dwk {
    type: number
    sql: ${TABLE}.DIM_COM_RETAILER_PRODUCT_DWK ;;
  }

  dimension: dim_flight_dwk {
    type: number
    sql: ${TABLE}.DIM_FLIGHT_DWK ;;
  }

  dimension: dim_retailer_product_dwk {
    type: string
    sql: ${TABLE}.DIM_RETAILER_PRODUCT_DWK ;;
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

  dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
  }

  dimension: org_airport_id {
    type: string
    sql: ${TABLE}.ORG_AIRPORT_ID ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}.PRODUCT_CODE ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}.PRODUCT_DESCRIPTION ;;
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

  measure: count {
    type: count
    drill_fields: [airline_name, cust_name, store_name]
  }
}
