view: dim_retailer_product {
  sql_table_name: etl_data_mart.dim_retailer_product ;;

  dimension: active_flag {
    type: number
    sql: ${TABLE}.ACTIVE_FLAG ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.BRAND ;;
  }

  dimension: cdm_dim_customer_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_CUSTOMER_DWK ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  dimension: dim_com_retailer_product_dwk {
    type: number
    sql: ${TABLE}.DIM_COM_RETAILER_PRODUCT_DWK ;;
  }

  dimension: dim_retailer_product_dwk {
    type: string
    sql: ${TABLE}.DIM_RETAILER_PRODUCT_DWK ;;
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

  dimension: end_user_gender {
    type: string
    sql: ${TABLE}.END_USER_GENDER ;;
  }

  dimension: mrp {
    type: number
    sql: ${TABLE}.MRP ;;
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

  dimension_group: valid_from {
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
    sql: ${TABLE}.VALID_FROM_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
