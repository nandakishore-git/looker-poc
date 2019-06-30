view: agg_store_pax_daily {
  sql_table_name: etl_data_mart.agg_store_pax_daily ;;

  dimension: agg_store_pax_daily_dwk {
    type: number
    sql: ${TABLE}.AGG_STORE_PAX_DAILY_DWK ;;
  }

  dimension: air_land_flag {
    type: number
    sql: ${TABLE}.AIR_LAND_FLAG ;;
  }

  dimension: arr_atm {
    type: number
    sql: ${TABLE}.ARR_ATM ;;
  }

  dimension: arr_atm_budget {
    type: number
    sql: ${TABLE}.ARR_ATM_BUDGET ;;
  }

  dimension: arr_atm_budget_lp_by_date {
    type: number
    sql: ${TABLE}.ARR_ATM_BUDGET_LP_BY_DATE ;;
  }

  dimension: arr_atm_budget_lp_by_day {
    type: number
    sql: ${TABLE}.ARR_ATM_BUDGET_LP_BY_DAY ;;
  }

  dimension: arr_atm_forecast {
    type: number
    sql: ${TABLE}.ARR_ATM_FORECAST ;;
  }

  dimension: arr_atm_forecast_lp_by_date {
    type: number
    sql: ${TABLE}.ARR_ATM_FORECAST_LP_BY_DATE ;;
  }

  dimension: arr_atm_forecast_lp_by_day {
    type: number
    sql: ${TABLE}.ARR_ATM_FORECAST_LP_BY_DAY ;;
  }

  dimension: arr_atm_lp_by_date {
    type: number
    sql: ${TABLE}.ARR_ATM_LP_BY_DATE ;;
  }

  dimension: arr_atm_lp_by_day {
    type: number
    sql: ${TABLE}.ARR_ATM_LP_BY_DAY ;;
  }

  dimension: arr_pax {
    type: number
    sql: ${TABLE}.ARR_PAX ;;
  }

  dimension: arr_pax_budget {
    type: number
    sql: ${TABLE}.ARR_PAX_BUDGET ;;
  }

  dimension: arr_pax_budget_lp_by_date {
    type: number
    sql: ${TABLE}.ARR_PAX_BUDGET_LP_BY_DATE ;;
  }

  dimension: arr_pax_budget_lp_by_day {
    type: number
    sql: ${TABLE}.ARR_PAX_BUDGET_LP_BY_DAY ;;
  }

  dimension: arr_pax_forecast {
    type: number
    sql: ${TABLE}.ARR_PAX_FORECAST ;;
  }

  dimension: arr_pax_forecast_lp_by_date {
    type: number
    sql: ${TABLE}.ARR_PAX_FORECAST_LP_BY_DATE ;;
  }

  dimension: arr_pax_forecast_lp_by_day {
    type: number
    sql: ${TABLE}.ARR_PAX_FORECAST_LP_BY_DAY ;;
  }

  dimension: arr_pax_lp_by_date {
    type: number
    sql: ${TABLE}.ARR_PAX_LP_BY_DATE ;;
  }

  dimension: arr_pax_lp_by_day {
    type: number
    sql: ${TABLE}.ARR_PAX_LP_BY_DAY ;;
  }

  dimension: arr_seats {
    type: number
    sql: ${TABLE}.ARR_SEATS ;;
  }

  dimension: arr_seats_budget {
    type: number
    sql: ${TABLE}.ARR_SEATS_BUDGET ;;
  }

  dimension: arr_seats_budget_lp_by_date {
    type: number
    sql: ${TABLE}.ARR_SEATS_BUDGET_LP_BY_DATE ;;
  }

  dimension: arr_seats_budget_lp_by_day {
    type: number
    sql: ${TABLE}.ARR_SEATS_BUDGET_LP_BY_DAY ;;
  }

  dimension: arr_seats_forecast {
    type: number
    sql: ${TABLE}.ARR_SEATS_FORECAST ;;
  }

  dimension: arr_seats_forecast_lp_by_date {
    type: number
    sql: ${TABLE}.ARR_SEATS_FORECAST_LP_BY_DATE ;;
  }

  dimension: arr_seats_forecast_lp_by_day {
    type: number
    sql: ${TABLE}.ARR_SEATS_FORECAST_LP_BY_DAY ;;
  }

  dimension: arr_seats_lp_by_date {
    type: number
    sql: ${TABLE}.ARR_SEATS_LP_BY_DATE ;;
  }

  dimension: arr_seats_lp_by_day {
    type: number
    sql: ${TABLE}.ARR_SEATS_LP_BY_DAY ;;
  }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
  }

  dimension: cdm_dim_terminal_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_TERMINAL_DWK ;;
  }

  dimension: dep_atm {
    type: number
    sql: ${TABLE}.DEP_ATM ;;
  }

  dimension: dep_atm_budget {
    type: number
    sql: ${TABLE}.DEP_ATM_BUDGET ;;
  }

  dimension: dep_atm_budget_lp_by_date {
    type: number
    sql: ${TABLE}.DEP_ATM_BUDGET_LP_BY_DATE ;;
  }

  dimension: dep_atm_budget_lp_by_day {
    type: number
    sql: ${TABLE}.DEP_ATM_BUDGET_LP_BY_DAY ;;
  }

  dimension: dep_atm_forecast {
    type: number
    sql: ${TABLE}.DEP_ATM_FORECAST ;;
  }

  dimension: dep_atm_forecast_lp_by_date {
    type: number
    sql: ${TABLE}.DEP_ATM_FORECAST_LP_BY_DATE ;;
  }

  dimension: dep_atm_forecast_lp_by_day {
    type: number
    sql: ${TABLE}.DEP_ATM_FORECAST_LP_BY_DAY ;;
  }

  dimension: dep_atm_lp_by_date {
    type: number
    sql: ${TABLE}.DEP_ATM_LP_BY_DATE ;;
  }

  dimension: dep_atm_lp_by_day {
    type: number
    sql: ${TABLE}.DEP_ATM_LP_BY_DAY ;;
  }

  dimension: dep_pax {
    type: number
    sql: ${TABLE}.DEP_PAX ;;
  }

  dimension: dep_pax_budget {
    type: number
    sql: ${TABLE}.DEP_PAX_BUDGET ;;
  }

  dimension: dep_pax_budget_lp_by_date {
    type: number
    sql: ${TABLE}.DEP_PAX_BUDGET_LP_BY_DATE ;;
  }

  dimension: dep_pax_budget_lp_by_day {
    type: number
    sql: ${TABLE}.DEP_PAX_BUDGET_LP_BY_DAY ;;
  }

  dimension: dep_pax_forecast {
    type: number
    sql: ${TABLE}.DEP_PAX_FORECAST ;;
  }

  dimension: dep_pax_forecast_lp_by_date {
    type: number
    sql: ${TABLE}.DEP_PAX_FORECAST_LP_BY_DATE ;;
  }

  dimension: dep_pax_forecast_lp_by_day {
    type: number
    sql: ${TABLE}.DEP_PAX_FORECAST_LP_BY_DAY ;;
  }

  dimension: dep_pax_lp_by_date {
    type: number
    sql: ${TABLE}.DEP_PAX_LP_BY_DATE ;;
  }

  dimension: dep_pax_lp_by_day {
    type: number
    sql: ${TABLE}.DEP_PAX_LP_BY_DAY ;;
  }

  dimension: dep_seats {
    type: number
    sql: ${TABLE}.DEP_SEATS ;;
  }

  dimension: dep_seats_budget {
    type: number
    sql: ${TABLE}.DEP_SEATS_BUDGET ;;
  }

  dimension: dep_seats_budget_lp_by_date {
    type: number
    sql: ${TABLE}.DEP_SEATS_BUDGET_LP_BY_DATE ;;
  }

  dimension: dep_seats_budget_lp_by_day {
    type: number
    sql: ${TABLE}.DEP_SEATS_BUDGET_LP_BY_DAY ;;
  }

  dimension: dep_seats_forecast {
    type: number
    sql: ${TABLE}.DEP_SEATS_FORECAST ;;
  }

  dimension: dep_seats_forecast_lp_by_date {
    type: number
    sql: ${TABLE}.DEP_SEATS_FORECAST_LP_BY_DATE ;;
  }

  dimension: dep_seats_forecast_lp_by_day {
    type: number
    sql: ${TABLE}.DEP_SEATS_FORECAST_LP_BY_DAY ;;
  }

  dimension: dep_seats_lp_by_date {
    type: number
    sql: ${TABLE}.DEP_SEATS_LP_BY_DATE ;;
  }

  dimension: dep_seats_lp_by_day {
    type: number
    sql: ${TABLE}.DEP_SEATS_LP_BY_DAY ;;
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

  dimension: provisional_flag {
    type: number
    sql: ${TABLE}.PROVISIONAL_FLAG ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  dimension: store_code {
    type: string
    sql: ${TABLE}.STORE_CODE ;;
  }

  dimension: terminal {
    type: string
    sql: ${TABLE}.TERMINAL ;;
  }

  dimension_group: trans {
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
    sql: ${TABLE}.TRANS_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
