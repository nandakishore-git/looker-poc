view: dim_gate {
  sql_table_name: etl_data_mart.dim_gate ;;

  dimension: bus_gate {
    type: string
    sql: ${TABLE}.BUS_GATE ;;
  }

  dimension: bus_gate_duration_allocation {
    type: number
    sql: ${TABLE}.BUS_GATE_DURATION_ALLOCATION ;;
  }

  dimension: dim_gate_dwk {
    type: number
    sql: ${TABLE}.DIM_GATE_DWK ;;
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

  dimension: gate_name {
    type: string
    sql: ${TABLE}.GATE_NAME ;;
  }

  dimension: number_of_bridges {
    type: number
    sql: ${TABLE}.NUMBER_OF_BRIDGES ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  measure: count {
    type: count
    drill_fields: [gate_name]
  }
}
