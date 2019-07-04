view: dim_consumer {
  sql_table_name: etl_data_mart.dim_consumer ;;

  dimension: consumer_dwk {
    type: number
    sql: ${TABLE}.consumer_dwk ;;
  }

  dimension: consumer_name {
    type: string
    sql: ${TABLE}.consumer_name ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.nationality ;;
  }

  dimension: passport_number {
    type: string
    sql: ${TABLE}.passport_number ;;
  }

  dimension: phno {
    type: string
    sql: ${TABLE}.phno ;;
  }

  dimension: voucher_code {
    type: string
    sql: ${TABLE}.voucher_code ;;
  }

  measure: count {
    type: count
    drill_fields: [consumer_name]
  }
}
