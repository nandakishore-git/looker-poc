view: cdm_dim_kpi_retail {
  sql_table_name: etl_data_mart.cdm_dim_kpi_retail ;;

  dimension: kpi_desc {
    type: string
    sql: ${TABLE}.KPI_DESC ;;
  }

  dimension: kpi_id {
    type: number
    sql: ${TABLE}.KPI_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
