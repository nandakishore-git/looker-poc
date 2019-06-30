view: cdm_dim_time {
  sql_table_name: etl_data_mart.cdm_dim_time ;;

  dimension: 15_minute_bucket {
    type: string
    sql: ${TABLE}.15_MINUTE_BUCKET ;;
  }

  dimension: 15_minute_bucket_slot {
    type: number
    sql: ${TABLE}.15_MINUTE_BUCKET_SLOT ;;
  }

  dimension: 5_minute_bucket {
    type: string
    sql: ${TABLE}.5_MINUTE_BUCKET ;;
  }

  dimension: 5_minute_bucket_slot {
    type: number
    sql: ${TABLE}.5_MINUTE_BUCKET_SLOT ;;
  }

  dimension: cdm_dim_time_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_TIME_DWK ;;
  }

  dimension: dm_load_date {
    type: string
    sql: ${TABLE}.DM_LOAD_DATE ;;
  }

  dimension: dm_load_delta_id {
    type: number
    sql: ${TABLE}.DM_LOAD_DELTA_ID ;;
  }

  dimension: dm_update_date {
    type: string
    sql: ${TABLE}.DM_UPDATE_DATE ;;
  }

  dimension: dm_update_delta_id {
    type: number
    sql: ${TABLE}.DM_UPDATE_DELTA_ID ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.HOUR ;;
  }

  dimension: hour_bucket {
    type: string
    sql: ${TABLE}.HOUR_BUCKET ;;
  }

  dimension: minute {
    type: number
    sql: ${TABLE}.MINUTE ;;
  }

  dimension: sec {
    type: number
    sql: ${TABLE}.SEC ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  dimension: time_am_pm {
    type: string
    sql: ${TABLE}.TIME_AM_PM ;;
  }

  dimension: time_grp_anaplan {
    type: string
    sql: ${TABLE}.TIME_GRP_ANAPLAN ;;
  }

  dimension: time_hh {
    type: number
    sql: ${TABLE}.TIME_HH ;;
  }

  dimension: time_hhmm_24_h {
    type: string
    sql: ${TABLE}.TIME_HHMM_24H ;;
  }

  dimension: time_hhmmss {
    type: number
    sql: ${TABLE}.TIME_HHMMSS ;;
  }

  dimension: time_hhmmss_12_h {
    type: string
    sql: ${TABLE}.TIME_HHMMSS_12H ;;
  }

  dimension: time_hhmmss_24_h {
    type: string
    sql: ${TABLE}.TIME_HHMMSS_24H ;;
  }

  dimension: time_in_seconds {
    type: number
    sql: ${TABLE}.TIME_IN_SECONDS ;;
  }

  dimension: time_mm {
    type: number
    sql: ${TABLE}.TIME_MM ;;
  }

  dimension: time_ss {
    type: number
    sql: ${TABLE}.TIME_SS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
