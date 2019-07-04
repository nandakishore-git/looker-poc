view: fct_flight {
  sql_table_name: etl_data_mart.fct_flight ;;

  dimension: airbourne_time {
    type: string
    sql: ${TABLE}.AIRBOURNE_TIME ;;
  }

  dimension: aircraft_registration_id {
    type: string
    sql: ${TABLE}.AIRCRAFT_REGISTRATION_ID ;;
  }

  dimension: aircraft_type_id {
    type: string
    sql: ${TABLE}.AIRCRAFT_TYPE_ID ;;
  }

  dimension: airline_iata_id {
    type: string
    sql: ${TABLE}.AIRLINE_IATA_ID ;;
  }

  dimension: airline_icao_id {
    type: string
    sql: ${TABLE}.AIRLINE_ICAO_ID ;;
  }

  dimension_group: belt_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.BELT_END_DATE ;;
  }

  dimension: belt_end_hour_id {
    type: string
    sql: ${TABLE}.BELT_END_HOUR_ID ;;
  }

  dimension: belt_id {
    type: string
    sql: ${TABLE}.BELT_ID ;;
  }

  dimension_group: belt_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.BELT_START_DATE ;;
  }

  dimension: belt_start_hour_id {
    type: string
    sql: ${TABLE}.BELT_START_HOUR_ID ;;
  }

  dimension_group: block {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.BLOCK_DATE ;;
  }

  dimension_group: block_date_orig {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.BLOCK_DATE_ORIG ;;
  }

  dimension: block_hour_id {
    type: string
    sql: ${TABLE}.BLOCK_HOUR_ID ;;
  }

  dimension: block_hour_orig_id {
    type: string
    sql: ${TABLE}.BLOCK_HOUR_ORIG_ID ;;
  }

  dimension: bound_id {
    type: string
    sql: ${TABLE}.BOUND_ID ;;
  }

  dimension_group: checkin_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CHECKIN_END_DATE ;;
  }

  dimension: checkin_end_hour_id {
    type: string
    sql: ${TABLE}.CHECKIN_END_HOUR_ID ;;
  }

  dimension_group: checkin_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CHECKIN_START_DATE ;;
  }

  dimension: checkin_start_hour_id {
    type: string
    sql: ${TABLE}.CHECKIN_START_HOUR_ID ;;
  }

  dimension: ckeckin_duration {
    type: string
    sql: ${TABLE}.CKECKIN_DURATION ;;
  }

  dimension: delay_duration {
    type: string
    sql: ${TABLE}.DELAY_DURATION ;;
  }

  dimension: dest_airport_id {
    type: string
    sql: ${TABLE}.DEST_AIRPORT_ID ;;
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

  dimension: flight_status_id {
    type: string
    sql: ${TABLE}.FLIGHT_STATUS_ID ;;
  }

  dimension: flight_unique_no {
    type: string
    sql: ${TABLE}.FLIGHT_UNIQUE_NO ;;
  }

  dimension_group: gate_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.GATE_END_DATE ;;
  }

  dimension: gate_end_hour_id {
    type: string
    sql: ${TABLE}.GATE_END_HOUR_ID ;;
  }

  dimension: gate_id {
    type: string
    sql: ${TABLE}.GATE_ID ;;
  }

  dimension_group: gate_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.GATE_START_DATE ;;
  }

  dimension: gate_start_hour_id {
    type: string
    sql: ${TABLE}.GATE_START_HOUR_ID ;;
  }

  dimension: org_airport_id {
    type: string
    sql: ${TABLE}.ORG_AIRPORT_ID ;;
  }

  dimension: orgdest_airport_id {
    type: string
    sql: ${TABLE}.ORGDEST_AIRPORT_ID ;;
  }

  dimension: parkin_slot {
    type: string
    sql: ${TABLE}.PARKIN_SLOT ;;
  }

  dimension: pax {
    type: string
    sql: ${TABLE}.PAX ;;
  }

  dimension: rotation_id {
    type: string
    sql: ${TABLE}.ROTATION_ID ;;
  }

  dimension_group: schedule {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SCHEDULE_DATE ;;
  }

  dimension: schedule_hour_id {
    type: string
    sql: ${TABLE}.SCHEDULE_HOUR_ID ;;
  }

  dimension: seat_capacity {
    type: string
    sql: ${TABLE}.SEAT_CAPACITY ;;
  }

  dimension: source_data_id {
    type: string
    sql: ${TABLE}.SOURCE_DATA_ID ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  dimension: touchdown_time {
    type: string
    sql: ${TABLE}.TOUCHDOWN_TIME ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
