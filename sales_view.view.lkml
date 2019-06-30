view: sales_view {
  sql_table_name: etl_data_mart.sales_view ;;

  dimension: actual_sales {
    type: number
    sql: ${TABLE}.ACTUAL_SALES ;;
  }

  dimension: actual_transactions {
    type: number
    sql: ${TABLE}.ACTUAL_TRANSACTIONS ;;
  }

  dimension: budget_sales {
    type: number
    sql: ${TABLE}.BUDGET_SALES ;;
  }

  dimension: budget_transactions {
    type: number
    sql: ${TABLE}.BUDGET_TRANSACTIONS ;;
  }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.CUSTOMER ;;
  }

  dimension: dim_store_dwk {
    type: number
    sql: ${TABLE}.DIM_STORE_DWK ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.LOCATION ;;
  }

  dimension: store_area {
    type: number
    sql: ${TABLE}.STORE_AREA ;;
  }

  dimension: store_category {
    type: string
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

  dimension: zone {
    type: string
    sql: ${TABLE}.ZONE ;;
  }

  measure: count {
    type: count
    drill_fields: [store_display_name]
  }
}
