view: dim_airport {
  sql_table_name: etl_data_mart.dim_airport ;;

  dimension: airport_name_skyb {
    type: string
    sql: ${TABLE}.AIRPORT_NAME_SKYB ;;
  }

  dimension: caa_code {
    type: string
    sql: ${TABLE}.CAA_CODE ;;
  }

  dimension: city_code {
    type: string
    sql: ${TABLE}.CITY_CODE ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.CITY_NAME ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.COUNTRY_CODE ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.COUNTRY_NAME ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: dim_airport_dwk {
    type: number
    sql: ${TABLE}.DIM_AIRPORT_DWK ;;
  }

  dimension: display_code {
    type: string
    sql: ${TABLE}.DISPLAY_CODE ;;
  }

  dimension: dist_bial {
    type: string
    sql: ${TABLE}.DIST_BIAL ;;
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

  dimension: dom_int_flag {
    type: string
    sql: ${TABLE}.DOM_INT_FLAG ;;
  }

  dimension: eu_flag_skyb {
    type: string
    sql: ${TABLE}.EU_FLAG_SKYB ;;
  }

  dimension: eu_noneu_indicator {
    type: string
    sql: ${TABLE}.EU_NONEU_INDICATOR ;;
  }

  dimension: geo_region1 {
    type: string
    sql: ${TABLE}.GEO_REGION1 ;;
  }

  dimension: geo_region2 {
    type: string
    sql: ${TABLE}.GEO_REGION2 ;;
  }

  dimension: geo_region3 {
    type: string
    sql: ${TABLE}.GEO_REGION3 ;;
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

  dimension: int_description {
    type: string
    sql: ${TABLE}.INT_DESCRIPTION ;;
  }

  dimension: market_sector {
    type: string
    sql: ${TABLE}.MARKET_SECTOR ;;
  }

  dimension: market_sector_desc {
    type: string
    sql: ${TABLE}.MARKET_SECTOR_DESC ;;
  }

  dimension: retail_market_code {
    type: string
    sql: ${TABLE}.RETAIL_MARKET_CODE ;;
  }

  dimension: retail_market_description {
    type: string
    sql: ${TABLE}.RETAIL_MARKET_DESCRIPTION ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  measure: count {
    type: count
    drill_fields: [city_name, country_name]
  }
}
