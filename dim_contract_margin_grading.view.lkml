view: dim_contract_margin_grading {
  sql_table_name: etl_data_mart.dim_contract_margin_grading ;;

  dimension: active_flag {
    type: string
    sql: ${TABLE}.ACTIVE_FLAG ;;
  }

  dimension: cdm_dim_customer_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_CUSTOMER_DWK ;;
  }

  dimension: contract_id {
    type: string
    sql: ${TABLE}.CONTRACT_ID ;;
  }

  dimension: dim_contract_margin_grading_dwk {
    type: number
    sql: ${TABLE}.DIM_CONTRACT_MARGIN_GRADING_DWK ;;
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

  dimension: margin_perc {
    type: number
    sql: ${TABLE}.MARGIN_PERC ;;
  }

  dimension: max_sales {
    type: number
    sql: ${TABLE}.MAX_SALES ;;
  }

  dimension: min_sales {
    type: number
    sql: ${TABLE}.MIN_SALES ;;
  }

  dimension: reporting_rule_id {
    type: string
    sql: ${TABLE}.REPORTING_RULE_ID ;;
  }

  dimension: reporting_rule_text {
    type: string
    sql: ${TABLE}.REPORTING_RULE_TEXT ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  dimension: store_code {
    type: string
    sql: ${TABLE}.STORE_CODE ;;
  }

  dimension: valid_from_date {
    type: string
    sql: ${TABLE}.VALID_FROM_DATE ;;
  }

  dimension: valid_to_date {
    type: string
    sql: ${TABLE}.VALID_TO_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
