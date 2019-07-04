view: agg_kpi_pax_daily {
  sql_table_name: etl_data_mart.agg_kpi_pax_daily ;;

  dimension: actual_pax_cy {
    type: number
    sql: ${TABLE}.ACTUAL_PAX_CY ;;
  }

  dimension: actual_pax_py {
    type: number
    sql: ${TABLE}.ACTUAL_PAX_PY ;;
  }

  dimension: agg_kpi_pax_daily_dwk {
    type: number
    sql: ${TABLE}.AGG_KPI_PAX_DAILY_DWK ;;
  }

  dimension: budget_pax {
    type: number
    sql: ${TABLE}.BUDGET_PAX ;;
  }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
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

  dimension: flight_id {
    type: string
    sql: ${TABLE}.FLIGHT_ID ;;
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
