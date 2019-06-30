view: agg_kpi_monthly {
  sql_table_name: etl_data_mart.agg_kpi_monthly ;;

  dimension: agg_kpi_monthly_dwk {
    type: number
    sql: ${TABLE}.AGG_KPI_MONTHLY_DWK ;;
  }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
  }

  dimension: dim_retailer_product_dwk {
    type: number
    sql: ${TABLE}.DIM_RETAILER_PRODUCT_DWK ;;
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

  dimension: kpi_budget {
    type: number
    sql: ${TABLE}.KPI_BUDGET ;;
  }

  dimension: kpi_cp {
    type: number
    sql: ${TABLE}.KPI_CP ;;
  }

  dimension: kpi_denominator_budget {
    type: number
    sql: ${TABLE}.KPI_DENOMINATOR_BUDGET ;;
  }

  dimension: kpi_denominator_cp {
    type: number
    sql: ${TABLE}.KPI_DENOMINATOR_CP ;;
  }

  dimension: kpi_denominator_lp {
    type: number
    sql: ${TABLE}.KPI_DENOMINATOR_LP ;;
  }

  dimension: kpi_id {
    type: number
    sql: ${TABLE}.KPI_ID ;;
  }

  dimension: kpi_lp {
    type: number
    sql: ${TABLE}.KPI_LP ;;
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
