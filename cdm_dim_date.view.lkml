view: cdm_dim_date {
  sql_table_name: etl_data_mart.cdm_dim_date ;;

  dimension: calendar_by_day {
    type: string
    sql: ${TABLE}.CALENDAR_BY_DAY ;;
  }

  dimension: calendar_by_day_index {
    type: number
    sql: ${TABLE}.CALENDAR_BY_DAY_INDEX ;;
  }

  dimension: calendar_by_day_month {
    type: string
    sql: ${TABLE}.CALENDAR_BY_DAY_MONTH ;;
  }

  dimension: calendar_date_index {
    type: number
    sql: ${TABLE}.CALENDAR_DATE_INDEX ;;
  }

  dimension_group: calendar_month_end {
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
    sql: ${TABLE}.CALENDAR_MONTH_END_DATE ;;
  }

  dimension: calendar_month_index {
    type: number
    sql: ${TABLE}.CALENDAR_MONTH_INDEX ;;
  }

  dimension: calendar_month_name {
    type: string
    sql: ${TABLE}.CALENDAR_MONTH_NAME ;;
  }

  dimension: calendar_month_number {
    type: number
    sql: ${TABLE}.CALENDAR_MONTH_NUMBER ;;
  }

  dimension: calendar_month_short_name {
    type: string
    sql: ${TABLE}.CALENDAR_MONTH_SHORT_NAME ;;
  }

  dimension_group: calendar_month_start {
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
    sql: ${TABLE}.CALENDAR_MONTH_START_DATE ;;
  }

  dimension: calendar_month_year {
    type: string
    sql: ${TABLE}.CALENDAR_MONTH_YEAR ;;
  }

  dimension: calendar_month_year_number {
    type: number
    sql: ${TABLE}.CALENDAR_MONTH_YEAR_NUMBER ;;
  }

  dimension: calendar_mtd_flag {
    type: number
    sql: ${TABLE}.CALENDAR_MTD_FLAG ;;
  }

  dimension: calendar_qtd_flag {
    type: number
    sql: ${TABLE}.CALENDAR_QTD_FLAG ;;
  }

  dimension: calendar_qtr {
    type: string
    sql: ${TABLE}.CALENDAR_QTR ;;
  }

  dimension_group: calendar_qtr_end {
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
    sql: ${TABLE}.CALENDAR_QTR_END_DATE ;;
  }

  dimension: calendar_qtr_index {
    type: number
    sql: ${TABLE}.CALENDAR_QTR_INDEX ;;
  }

  dimension: calendar_qtr_number {
    type: number
    sql: ${TABLE}.CALENDAR_QTR_NUMBER ;;
  }

  dimension_group: calendar_qtr_start {
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
    sql: ${TABLE}.CALENDAR_QTR_START_DATE ;;
  }

  dimension: calendar_qtr_year {
    type: string
    sql: ${TABLE}.CALENDAR_QTR_YEAR ;;
  }

  dimension: calendar_quinquennium {
    type: number
    sql: ${TABLE}.CALENDAR_QUINQUENNIUM ;;
  }

  dimension: calendar_week_day_number {
    type: number
    sql: ${TABLE}.CALENDAR_WEEK_DAY_NUMBER ;;
  }

  dimension_group: calendar_week_end {
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
    sql: ${TABLE}.CALENDAR_WEEK_END_DATE ;;
  }

  dimension: calendar_week_index {
    type: number
    sql: ${TABLE}.CALENDAR_WEEK_INDEX ;;
  }

  dimension: calendar_week_number {
    type: number
    sql: ${TABLE}.CALENDAR_WEEK_NUMBER ;;
  }

  dimension_group: calendar_week_start {
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
    sql: ${TABLE}.CALENDAR_WEEK_START_DATE ;;
  }

  dimension: calendar_week_year {
    type: number
    sql: ${TABLE}.CALENDAR_WEEK_YEAR ;;
  }

  dimension: calendar_wtd_flag {
    type: number
    sql: ${TABLE}.CALENDAR_WTD_FLAG ;;
  }

  dimension: calendar_year {
    type: number
    sql: ${TABLE}.CALENDAR_YEAR ;;
  }

  dimension_group: calendar_year_end {
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
    sql: ${TABLE}.CALENDAR_YEAR_END_DATE ;;
  }

  dimension: calendar_year_index {
    type: number
    sql: ${TABLE}.CALENDAR_YEAR_INDEX ;;
  }

  dimension_group: calendar_year_start {
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
    sql: ${TABLE}.CALENDAR_YEAR_START_DATE ;;
  }

  dimension: calendar_year_week {
    type: number
    sql: ${TABLE}.CALENDAR_YEAR_WEEK ;;
  }

  dimension: calendar_ytd_flag {
    type: number
    sql: ${TABLE}.CALENDAR_YTD_FLAG ;;
  }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
  }

  dimension_group: date_value {
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
    sql: ${TABLE}.DATE_VALUE ;;
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

  dimension: fiscal_date_index {
    type: number
    sql: ${TABLE}.FISCAL_DATE_INDEX ;;
  }

  dimension_group: fiscal_month_end {
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
    sql: ${TABLE}.FISCAL_MONTH_END_DATE ;;
  }

  dimension: fiscal_month_index {
    type: number
    sql: ${TABLE}.FISCAL_MONTH_INDEX ;;
  }

  dimension: fiscal_month_name {
    type: string
    sql: ${TABLE}.FISCAL_MONTH_NAME ;;
  }

  dimension: fiscal_month_number {
    type: number
    sql: ${TABLE}.FISCAL_MONTH_NUMBER ;;
  }

  dimension: fiscal_month_short_name {
    type: string
    sql: ${TABLE}.FISCAL_MONTH_SHORT_NAME ;;
  }

  dimension_group: fiscal_month_start {
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
    sql: ${TABLE}.FISCAL_MONTH_START_DATE ;;
  }

  dimension: fiscal_month_year {
    type: string
    sql: ${TABLE}.FISCAL_MONTH_YEAR ;;
  }

  dimension: fiscal_month_year_number {
    type: number
    sql: ${TABLE}.FISCAL_MONTH_YEAR_NUMBER ;;
  }

  dimension: fiscal_mtd_flag {
    type: number
    sql: ${TABLE}.FISCAL_MTD_FLAG ;;
  }

  dimension: fiscal_qtd_flag {
    type: number
    sql: ${TABLE}.FISCAL_QTD_FLAG ;;
  }

  dimension: fiscal_qtr {
    type: string
    sql: ${TABLE}.FISCAL_QTR ;;
  }

  dimension_group: fiscal_qtr_end {
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
    sql: ${TABLE}.FISCAL_QTR_END_DATE ;;
  }

  dimension: fiscal_qtr_index {
    type: number
    sql: ${TABLE}.FISCAL_QTR_INDEX ;;
  }

  dimension: fiscal_qtr_number {
    type: number
    sql: ${TABLE}.FISCAL_QTR_NUMBER ;;
  }

  dimension_group: fiscal_qtr_start {
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
    sql: ${TABLE}.FISCAL_QTR_START_DATE ;;
  }

  dimension: fiscal_qtr_year {
    type: string
    sql: ${TABLE}.FISCAL_QTR_YEAR ;;
  }

  dimension: fiscal_week_day_number {
    type: number
    sql: ${TABLE}.FISCAL_WEEK_DAY_NUMBER ;;
  }

  dimension_group: fiscal_week_end {
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
    sql: ${TABLE}.FISCAL_WEEK_END_DATE ;;
  }

  dimension: fiscal_week_index {
    type: number
    sql: ${TABLE}.FISCAL_WEEK_INDEX ;;
  }

  dimension: fiscal_week_number {
    type: number
    sql: ${TABLE}.FISCAL_WEEK_NUMBER ;;
  }

  dimension_group: fiscal_week_start {
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
    sql: ${TABLE}.FISCAL_WEEK_START_DATE ;;
  }

  dimension: fiscal_week_year {
    type: number
    sql: ${TABLE}.FISCAL_WEEK_YEAR ;;
  }

  dimension: fiscal_wtd_flag {
    type: number
    sql: ${TABLE}.FISCAL_WTD_FLAG ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}.FISCAL_YEAR ;;
  }

  dimension_group: fiscal_year_end {
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
    sql: ${TABLE}.FISCAL_YEAR_END_DATE ;;
  }

  dimension: fiscal_year_index {
    type: number
    sql: ${TABLE}.FISCAL_YEAR_INDEX ;;
  }

  dimension_group: fiscal_year_start {
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
    sql: ${TABLE}.FISCAL_YEAR_START_DATE ;;
  }

  dimension: fiscal_ytd_flag {
    type: number
    sql: ${TABLE}.FISCAL_YTD_FLAG ;;
  }

  dimension: phase {
    type: string
    sql: ${TABLE}.PHASE ;;
  }

  dimension: retail_week_day_number {
    type: number
    sql: ${TABLE}.RETAIL_WEEK_DAY_NUMBER ;;
  }

  dimension_group: retail_week_end {
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
    sql: ${TABLE}.RETAIL_WEEK_END_DATE ;;
  }

  dimension: retail_week_index {
    type: number
    sql: ${TABLE}.RETAIL_WEEK_INDEX ;;
  }

  dimension: retail_week_number {
    type: number
    sql: ${TABLE}.RETAIL_WEEK_NUMBER ;;
  }

  dimension_group: retail_week_start {
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
    sql: ${TABLE}.RETAIL_WEEK_START_DATE ;;
  }

  dimension: retail_week_year {
    type: number
    sql: ${TABLE}.RETAIL_WEEK_YEAR ;;
  }

  dimension: retail_wtd_flag {
    type: number
    sql: ${TABLE}.RETAIL_WTD_FLAG ;;
  }

  dimension: season {
    type: string
    sql: ${TABLE}.SEASON ;;
  }

  dimension: short_week_day_name {
    type: string
    sql: ${TABLE}.SHORT_WEEK_DAY_NAME ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  dimension: week_day_name {
    type: string
    sql: ${TABLE}.WEEK_DAY_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      fiscal_month_name,
      fiscal_month_short_name,
      calendar_month_name,
      short_week_day_name,
      calendar_month_short_name,
      week_day_name
    ]
  }
}
