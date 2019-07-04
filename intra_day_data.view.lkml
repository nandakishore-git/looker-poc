view: intra_day_data {
  sql_table_name: etl_data_mart.intra_day_data ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: actual_sales_cp {
    type: number
    sql: ${TABLE}.ACTUAL_SALES_CP ;;
  }

  dimension: actual_trans_cp {
    type: number
    sql: ${TABLE}.ACTUAL_TRANS_CP ;;
  }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.CREATED_ON ;;
  }

  dimension: hour_level {
    type: number
    sql: ${TABLE}.HOUR_LEVEL ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.LAST_MODIFIED_DATE ;;
  }

  dimension: receipt_no {
    type: string
    sql: ${TABLE}.RECEIPT_NO ;;
  }

  dimension: store_code {
    type: string
    sql: ${TABLE}.STORE_CODE ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.STORE_NAME ;;
  }

  dimension: time_diff_mins {
    type: number
    sql: ${TABLE}.TIME_DIFF_MINS ;;
  }

  dimension: trans_status {
    type: string
    sql: ${TABLE}.TRANS_STATUS ;;
  }

  measure: count {
    type: count
    drill_fields: [id, store_name]
  }
}
