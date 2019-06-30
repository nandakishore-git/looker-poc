view: cdm_dim_terminal {
  sql_table_name: etl_data_mart.cdm_dim_terminal ;;

  dimension: cdm_dim_terminal_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_TERMINAL_DWK ;;
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

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  dimension: terminal_description {
    type: string
    sql: ${TABLE}.TERMINAL_DESCRIPTION ;;
  }

  dimension: terminal_short_name {
    type: string
    sql: ${TABLE}.TERMINAL_SHORT_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [terminal_short_name]
  }
}
