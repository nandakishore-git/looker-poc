view: sql_runner_query {
  derived_table: {
    sql: SELECT
        sum(agg_flight_daily.ACTUAL_SALES_CP)  AS `agg_flight_daily.actual_sales_cp`
      FROM etl_data_mart.agg_flight_daily  AS agg_flight_daily
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: agg_flight_daily_actual_sales_cp {
    type: number
    sql: ${TABLE}.`agg_flight_daily.actual_sales_cp` ;;
  }

  set: detail {
    fields: [agg_flight_daily_actual_sales_cp]
  }
}
