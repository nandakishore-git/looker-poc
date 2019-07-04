view: aggkpiavgcp {
  derived_table: {
    sql: SELECT
        avg(agg_kpi_daily.KPI_CP)  AS `agg_kpi_daily.kpi_cp`
      FROM etl_data_mart.agg_kpi_daily  AS agg_kpi_daily
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: agg_kpi_daily_kpi_cp {
    type: number
    sql: ${TABLE}.`agg_kpi_daily.kpi_cp` ;;
  }

  set: detail {
    fields: [agg_kpi_daily_kpi_cp]
  }
}
