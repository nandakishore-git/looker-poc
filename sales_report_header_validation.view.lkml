view: sales_report_header_validation {
  sql_table_name: etl_data_mart.sales_report_header_validation ;;

  dimension: diff_report_ds_discount_amt {
    type: number
    sql: ${TABLE}.DIFF_REPORT_DS_DISCOUNT_AMT ;;
  }

  dimension: diff_report_ds_inv_amt {
    type: number
    sql: ${TABLE}.DIFF_REPORT_DS_INV_AMT ;;
  }

  dimension: diff_report_ds_net_amt {
    type: number
    sql: ${TABLE}.DIFF_REPORT_DS_NET_AMT ;;
  }

  dimension: diff_report_ds_tax_amt {
    type: number
    sql: ${TABLE}.DIFF_REPORT_DS_TAX_AMT ;;
  }

  dimension: ds_discount_amt {
    type: number
    sql: ${TABLE}.DS_DISCOUNT_AMT ;;
  }

  dimension: ds_inv_amt {
    type: number
    sql: ${TABLE}.DS_INV_AMT ;;
  }

  dimension: ds_net_amt {
    type: number
    sql: ${TABLE}.DS_NET_AMT ;;
  }

  dimension: ds_order_no {
    type: string
    sql: ${TABLE}.DS_ORDER_NO ;;
  }

  dimension: ds_pos_no {
    type: string
    sql: ${TABLE}.DS_POS_NO ;;
  }

  dimension_group: ds_receipt {
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
    sql: ${TABLE}.DS_RECEIPT_DATE ;;
  }

  dimension: ds_receipt_no {
    type: string
    sql: ${TABLE}.DS_RECEIPT_NO ;;
  }

  dimension: ds_store_code {
    type: string
    sql: ${TABLE}.DS_STORE_CODE ;;
  }

  dimension: ds_store_name {
    type: string
    sql: ${TABLE}.DS_STORE_NAME ;;
  }

  dimension: ds_total_tax {
    type: number
    sql: ${TABLE}.DS_TOTAL_TAX ;;
  }

  dimension: ds_trans_type {
    type: string
    sql: ${TABLE}.DS_TRANS_TYPE ;;
  }

  dimension: report_discount_amt {
    type: number
    sql: ${TABLE}.REPORT_DISCOUNT_AMT ;;
  }

  dimension: report_inv_amt {
    type: number
    sql: ${TABLE}.REPORT_INV_AMT ;;
  }

  dimension: report_net_amt {
    type: number
    sql: ${TABLE}.REPORT_NET_AMT ;;
  }

  dimension: report_pos_no {
    type: string
    sql: ${TABLE}.REPORT_POS_NO ;;
  }

  dimension_group: report_receipt {
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
    sql: ${TABLE}.REPORT_RECEIPT_DATE ;;
  }

  dimension: report_receipt_no {
    type: string
    sql: ${TABLE}.REPORT_RECEIPT_NO ;;
  }

  dimension: report_sales_report_filename {
    type: string
    sql: ${TABLE}.REPORT_SALES_REPORT_FILENAME ;;
  }

  dimension: report_store_code {
    type: string
    sql: ${TABLE}.REPORT_STORE_CODE ;;
  }

  dimension: report_store_name {
    type: string
    sql: ${TABLE}.REPORT_STORE_NAME ;;
  }

  dimension: report_total_tax {
    type: number
    sql: ${TABLE}.REPORT_TOTAL_TAX ;;
  }

  dimension: report_trans_type {
    type: string
    sql: ${TABLE}.REPORT_TRANS_TYPE ;;
  }

  dimension: report_transaction_no {
    type: string
    sql: ${TABLE}.REPORT_TRANSACTION_NO ;;
  }

  measure: count {
    type: count
    drill_fields: [ds_store_name, report_sales_report_filename, report_store_name]
  }
}
