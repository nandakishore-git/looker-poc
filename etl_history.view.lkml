view: etl_history {
  sql_table_name: etl_data_mart.etl_history ;;

  dimension: application {
    type: string
    sql: ${TABLE}.APPLICATION ;;
  }

  dimension: data_available_end {
    type: number
    sql: ${TABLE}.DATA_AVAILABLE_END ;;
  }

  dimension: data_available_from {
    type: number
    sql: ${TABLE}.DATA_AVAILABLE_FROM ;;
  }

  dimension: etl_updated_datekeyid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ETL_UPDATED_DATEKEYID ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TABLE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name]
  }
}
