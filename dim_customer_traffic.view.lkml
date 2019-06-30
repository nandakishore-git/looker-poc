view: dim_customer_traffic {
  sql_table_name: etl_data_mart.dim_customer_traffic ;;

  dimension: airline_classification {
    type: string
    sql: ${TABLE}.AIRLINE_CLASSIFICATION ;;
  }

  dimension: airline_grouping {
    type: string
    sql: ${TABLE}.AIRLINE_GROUPING ;;
  }

  dimension: caa_airline_name {
    type: string
    sql: ${TABLE}.CAA_AIRLINE_NAME ;;
  }

  dimension: cdm_dim_customer_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_CUSTOMER_DWK ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CUSTOMER_NAME ;;
  }

  dimension: dim_customer_traffic_dwk {
    type: number
    sql: ${TABLE}.DIM_CUSTOMER_TRAFFIC_DWK ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.DISPLAY_NAME ;;
  }

  dimension: dm_current_record_flag {
    type: number
    sql: ${TABLE}.DM_CURRENT_RECORD_FLAG ;;
  }

  dimension_group: dm_effective_end {
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
    sql: ${TABLE}.DM_EFFECTIVE_END_DATE ;;
  }

  dimension_group: dm_effective_start {
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
    sql: ${TABLE}.DM_EFFECTIVE_START_DATE ;;
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

  dimension: dm_version_no {
    type: number
    sql: ${TABLE}.DM_VERSION_NO ;;
  }

  dimension: flight_prefix {
    type: string
    sql: ${TABLE}.FLIGHT_PREFIX ;;
  }

  dimension: iata_code {
    type: string
    sql: ${TABLE}.IATA_CODE ;;
  }

  dimension: icao_code {
    type: string
    sql: ${TABLE}.ICAO_CODE ;;
  }

  dimension: operator_code {
    type: string
    sql: ${TABLE}.OPERATOR_CODE ;;
  }

  dimension: operator_name {
    type: string
    sql: ${TABLE}.OPERATOR_NAME ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  measure: count {
    type: count
    drill_fields: [caa_airline_name, operator_name, customer_name, display_name]
  }
}
