view: dim_store {
  sql_table_name: etl_data_mart.dim_store ;;

  dimension: active_flag {
    type: number
    sql: ${TABLE}.ACTIVE_FLAG ;;
  }

  dimension: air_land_flag {
    type: number
    sql: ${TABLE}.AIR_LAND_FLAG ;;
  }

  dimension: arr_dep_area {
    type: string
    sql: ${TABLE}.ARR_DEP_AREA ;;
  }

  dimension: cdm_dim_customer_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_CUSTOMER_DWK ;;
  }

  dimension: cdm_dim_terminal_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_TERMINAL_DWK ;;
  }

  dimension: closing_date {
    type: string
    sql: ${TABLE}.CLOSING_DATE ;;
  }

  dimension: closing_hrs {
    type: string
    sql: ${TABLE}.CLOSING_HRS ;;
  }

  dimension: current_status {
    type: string
    sql: ${TABLE}.CURRENT_STATUS ;;
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

  dimension: duty_free_flag {
    type: number
    sql: ${TABLE}.DUTY_FREE_FLAG ;;
  }

  dimension: epos_income_flag {
    type: number
    sql: ${TABLE}.EPOS_INCOME_FLAG ;;
  }

  dimension: fixed_rental {
    type: number
    sql: ${TABLE}.FIXED_RENTAL ;;
  }

  dimension: floor {
    type: string
    sql: ${TABLE}.FLOOR ;;
  }

  dimension: gl_description {
    type: string
    sql: ${TABLE}.GL_DESCRIPTION ;;
  }

  dimension: glaccount_code {
    type: number
    sql: ${TABLE}.GLACCOUNT_CODE ;;
  }

  dimension: hold_area {
    type: string
    sql: ${TABLE}.HOLD_AREA ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.LATITUDE ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.LOCATION ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.LONGITUDE ;;
  }

  dimension: nearest_gate_belt {
    type: string
    sql: ${TABLE}.NEAREST_GATE_BELT ;;
  }

  dimension: opening_date {
    type: string
    sql: ${TABLE}.OPENING_DATE ;;
  }

  dimension: opening_hrs {
    type: string
    sql: ${TABLE}.OPENING_HRS ;;
  }

  dimension: profitcenter_code {
    type: string
    sql: ${TABLE}.PROFITCENTER_CODE ;;
  }

  dimension: profitcenter_description {
    type: string
    sql: ${TABLE}.PROFITCENTER_DESCRIPTION ;;
  }

  dimension: shop_number {
    type: string
    sql: ${TABLE}.SHOP_NUMBER ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  dimension: store_category {
    type: string
    drill_fields: [store_display_name]
    sql: ${TABLE}.STORE_CATEGORY ;;
  }

  dimension: store_code {
    type: string
    sql: ${TABLE}.STORE_CODE ;;
  }

  dimension: store_display_name {
    type: string
    sql: ${TABLE}.STORE_DISPLAY_NAME ;;
  }

  dimension: terminal {
    type: string
    sql: ${TABLE}.TERMINAL ;;
  }

  dimension_group: valid_from {
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
    sql: ${TABLE}.VALID_FROM_DATE ;;
  }

  dimension: zone {
    type: string
    drill_fields: [store_category,store_display_name,store_code]
    sql: ${TABLE}.ZONE ;;
  }

  measure: count {
    type: count
    drill_fields: [store_display_name]
  }
}
