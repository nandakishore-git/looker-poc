view: agg_gender_monthly {
  sql_table_name: etl_data_mart.agg_gender_monthly ;;

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

  dimension: agg_gender_monthly_dwk {
    type: number
    sql: ${TABLE}.AGG_GENDER_MONTHLY_DWK ;;
  }

  dimension: cdm_dim_customer_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_CUSTOMER_DWK ;;
  }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
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
