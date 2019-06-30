view: dim_com_retailer_product {
  sql_table_name: etl_data_mart.dim_com_retailer_product ;;

  dimension: active_flag {
    type: number
    sql: ${TABLE}.ACTIVE_FLAG ;;
  }

  dimension: class_code {
    type: number
    sql: ${TABLE}.CLASS_CODE ;;
  }

  dimension: class_name {
    type: string
    sql: ${TABLE}.CLASS_NAME ;;
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

  dimension: store_code {
    type: string
    sql: ${TABLE}.STORE_CODE ;;
  }

  dimension: subclass_code {
    type: number
    sql: ${TABLE}.SUBCLASS_CODE ;;
  }

  dimension: subclass_name {
    type: string
    sql: ${TABLE}.SUBCLASS_NAME ;;
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

  dimension: wdf_flg {
    type: number
    sql: ${TABLE}.WDF_FLG ;;
  }

  measure: count {
    type: count
    drill_fields: [subclass_name, class_name, group_name, department_name]
  }
}
