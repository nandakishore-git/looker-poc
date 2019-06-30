view: agg_store_product_monthly {
  sql_table_name: etl_data_mart.agg_store_product_monthly ;;

  measure: actual_income_cp {
    label: "CY"
    type: sum
    value_format_name: decimal_2
    sql: ${TABLE}.ACTUAL_INCOME_CP ;;
  }



  dimension_group: dm_load {
    type: time
    timeframes: [
      date,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DM_LOAD_DATE ;;
  }

}
