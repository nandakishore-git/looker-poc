view: agg_stores_dcs_daily {
  sql_table_name: etl_data_mart.agg_stores_dcs_daily ;;

  dimension: actual_income_cp {
    type: number
    sql: ${TABLE}.ACTUAL_INCOME_CP ;;
  }

  dimension: actual_sales_cp {
    type: number
    sql: ${TABLE}.ACTUAL_SALES_CP ;;
  }

  dimension: actual_trans_count_cp {
    type: number
    sql: ${TABLE}.ACTUAL_TRANS_COUNT_CP ;;
  }

  dimension: agg_stores_dcs_daily_dwk {
    type: number
    sql: ${TABLE}.AGG_STORES_DCS_DAILY_DWK ;;
  }

  dimension: area_cp {
    type: number
    sql: ${TABLE}.AREA_CP ;;
  }

  dimension: cdm_dim_customer_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_CUSTOMER_DWK ;;
  }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
  }

  dimension: class_code {
    type: string
    sql: ${TABLE}.CLASS_CODE ;;
  }

  dimension: class_name {
    type: string
    sql: ${TABLE}.CLASS_NAME ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: department_code {
    type: string
    sql: ${TABLE}.DEPARTMENT_CODE ;;
  }

  dimension: department_name {
    type: string
    sql: ${TABLE}.DEPARTMENT_NAME ;;
  }

  dimension: dim_com_retailer_product_dwk {
    type: number
    sql: ${TABLE}.DIM_COM_RETAILER_PRODUCT_DWK ;;
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

  dimension: group_code {
    type: string
    sql: ${TABLE}.GROUP_CODE ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GROUP_NAME ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
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
    drill_fields: [class_name, department_name, group_name]
  }
}
