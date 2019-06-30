view: fct_avr_daily {
  sql_table_name: etl_data_mart.fct_avr_daily ;;

  dimension_group: actual_flight_date {
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
    sql: ${TABLE}.ACTUAL_FLIGHT_DATE_TIME ;;
  }

  dimension: arrival_dep_flg {
    type: number
    sql: ${TABLE}.ARRIVAL_DEP_FLG ;;
  }

  dimension: caa_airline_name {
    type: string
    sql: ${TABLE}.CAA_AIRLINE_NAME ;;
  }

  dimension: caa_code {
    type: string
    sql: ${TABLE}.CAA_CODE ;;
  }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
  }

  dimension: city_code {
    type: string
    sql: ${TABLE}.CITY_CODE ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.CITY_NAME ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: dim_airport_dwk {
    type: number
    sql: ${TABLE}.DIM_AIRPORT_DWK ;;
  }

  dimension: dim_customer_traffic_dwk {
    type: number
    sql: ${TABLE}.DIM_CUSTOMER_TRAFFIC_DWK ;;
  }

  dimension: dim_flight_dwk {
    type: number
    sql: ${TABLE}.DIM_FLIGHT_DWK ;;
  }

  dimension: dim_store_dwk {
    type: number
    sql: ${TABLE}.DIM_STORE_DWK ;;
  }

  dimension: display_code {
    type: string
    sql: ${TABLE}.DISPLAY_CODE ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.DISPLAY_NAME ;;
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
    type: string
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
    type: string
    sql: ${TABLE}.DM_UPDATE_DELTA_ID ;;
  }

  dimension: dom_int_flag {
    type: string
    sql: ${TABLE}.DOM_INT_FLAG ;;
  }

  dimension: eu_noneu_indicator {
    type: string
    sql: ${TABLE}.EU_NONEU_INDICATOR ;;
  }

  dimension: fct_avr_daily_dwk {
    type: number
    sql: ${TABLE}.FCT_AVR_DAILY_DWK ;;
  }

  dimension: flight_display_code {
    type: string
    sql: ${TABLE}.FLIGHT_DISPLAY_CODE ;;
  }

  dimension: flight_prefix {
    type: string
    sql: ${TABLE}.FLIGHT_PREFIX ;;
  }

  dimension: flight_service_number {
    type: string
    sql: ${TABLE}.FLIGHT_SERVICE_NUMBER ;;
  }

  dimension: flight_service_prefix {
    type: string
    sql: ${TABLE}.FLIGHT_SERVICE_PREFIX ;;
  }

  dimension: haul_desc {
    type: string
    sql: ${TABLE}.HAUL_DESC ;;
  }

  dimension: iata_code {
    type: string
    sql: ${TABLE}.IATA_CODE ;;
  }

  dimension: icao_code {
    type: string
    sql: ${TABLE}.ICAO_CODE ;;
  }

  dimension: income {
    type: number
    sql: ${TABLE}.INCOME ;;
  }

  dimension: nearest_gate_belt {
    type: string
    sql: ${TABLE}.NEAREST_GATE_BELT ;;
  }

  dimension: pax {
    type: number
    sql: ${TABLE}.PAX ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.SALES ;;
  }

  dimension_group: scheduled_flight_date {
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
    sql: ${TABLE}.SCHEDULED_FLIGHT_DATE_TIME ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  dimension_group: trans {
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
    sql: ${TABLE}.TRANS_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: [caa_airline_name, city_name, country_name, display_name]
  }
}
