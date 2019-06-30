view: fct_income_monthly {
  sql_table_name: etl_data_mart.fct_income_monthly ;;

  dimension: budget_dpax_dom {
    type: number
    sql: ${TABLE}.BUDGET_DPAX_DOM ;;
  }

  dimension: budget_dpax_intl {
    type: number
    sql: ${TABLE}.BUDGET_DPAX_INTL ;;
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

  dimension_group: dm_updated {
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
    sql: ${TABLE}.DM_UPDATED_DATE ;;
  }

  dimension: dm_updated_delta_id {
    type: number
    sql: ${TABLE}.DM_UPDATED_DELTA_ID ;;
  }

  dimension: forecast_income {
    type: number
    sql: ${TABLE}.FORECAST_INCOME ;;
  }

  dimension: income_cp {
    type: number
    sql: ${TABLE}.INCOME_CP ;;
  }

  dimension: income_lp {
    type: number
    sql: ${TABLE}.INCOME_LP ;;
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
