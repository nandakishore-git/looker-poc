view: dim_flight {
  sql_table_name: etl_data_mart.dim_flight ;;

  dimension: dim_flight_dwk {
    type: number
    sql: ${TABLE}.DIM_FLIGHT_DWK ;;
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

  dimension: flight_display_code {
    type: string
    sql: ${TABLE}.FLIGHT_DISPLAY_CODE ;;
  }

  dimension: flight_service_number {
    type: string
    sql: ${TABLE}.FLIGHT_SERVICE_NUMBER ;;
  }

  dimension: flight_service_prefix {
    type: string
    sql: ${TABLE}.FLIGHT_SERVICE_PREFIX ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
