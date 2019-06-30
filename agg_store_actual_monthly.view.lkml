view: agg_store_actual_monthly {
  sql_table_name: etl_data_mart.agg_store_actual_monthly ;;

    measure: actual_sales_cp {
      label: "CY"
      type: sum
      value_format_name: decimal_2
      sql: ${TABLE}.ACTUAL_SALES_CP ;;
    }

  dimension: cdm_dim_date_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_DATE_DWK ;;
  }


    dimension_group: dm_load {
      type: time
      timeframes: [
        date,
        month,
        quarter,
        year
      ]
      sql:   ${TABLE}.DM_LOAD_DATE ;;
    }
}
