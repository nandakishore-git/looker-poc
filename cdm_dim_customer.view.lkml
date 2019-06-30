view: cdm_dim_customer {
  sql_table_name: etl_data_mart.cdm_dim_customer ;;

  dimension: accnt_grpv {
    type: string
    sql: ${TABLE}.ACCNT_GRPV ;;
  }

  dimension: cdm_dim_customer_dwk {
    type: number
    sql: ${TABLE}.CDM_DIM_CUSTOMER_DWK ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: collector {
    type: string
    sql: ${TABLE}.COLLECTOR ;;
  }

  dimension: consumer {
    type: string
    sql: ${TABLE}.CONSUMER ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: county_code {
    type: string
    sql: ${TABLE}.COUNTY_CODE ;;
  }

  dimension: cust_class {
    type: string
    sql: ${TABLE}.CUST_CLASS ;;
  }

  dimension: cust_class_desc {
    type: string
    sql: ${TABLE}.CUST_CLASS_DESC ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.CUSTOMER ;;
  }

  dimension: deletion_flag {
    type: string
    sql: ${TABLE}.DELETION_FLAG ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.DISTRICT ;;
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

  dimension: fax_numb {
    type: string
    sql: ${TABLE}.FAX_NUMB ;;
  }

  dimension: fiscvarnt {
    type: string
    sql: ${TABLE}.FISCVARNT ;;
  }

  dimension: ind_code_1 {
    type: string
    sql: ${TABLE}.IND_CODE_1 ;;
  }

  dimension: ind_code_2 {
    type: string
    sql: ${TABLE}.IND_CODE_2 ;;
  }

  dimension: ind_code_3 {
    type: string
    sql: ${TABLE}.IND_CODE_3 ;;
  }

  dimension: ind_code_4 {
    type: string
    sql: ${TABLE}.IND_CODE_4 ;;
  }

  dimension: ind_code_5 {
    type: string
    sql: ${TABLE}.IND_CODE_5 ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.INDUSTRY ;;
  }

  dimension: langu {
    type: string
    sql: ${TABLE}.LANGU ;;
  }

  dimension: name_1 {
    type: string
    sql: ${TABLE}.NAME_1 ;;
  }

  dimension: name_2 {
    type: string
    sql: ${TABLE}.NAME_2 ;;
  }

  dimension: name_3 {
    type: string
    sql: ${TABLE}.NAME_3 ;;
  }

  dimension: nielsen_id {
    type: string
    sql: ${TABLE}.NIELSEN_ID ;;
  }

  dimension: one_time_acct {
    type: string
    sql: ${TABLE}.ONE_TIME_ACCT ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.PHONE ;;
  }

  dimension: plant {
    type: string
    sql: ${TABLE}.PLANT ;;
  }

  dimension: po_box {
    type: string
    sql: ${TABLE}.PO_BOX ;;
  }

  dimension: po_box_city {
    type: string
    sql: ${TABLE}.PO_BOX_CITY ;;
  }

  dimension: postal_cd {
    type: string
    sql: ${TABLE}.POSTAL_CD ;;
  }

  dimension: postcd_box {
    type: string
    sql: ${TABLE}.POSTCD_BOX ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}.SEARCH_TERM ;;
  }

  dimension: skyb_cic_band {
    type: string
    sql: ${TABLE}.SKYB_CIC_BAND ;;
  }

  dimension: skyb_flight_prefix {
    type: string
    sql: ${TABLE}.SKYB_FLIGHT_PREFIX ;;
  }

  dimension: skyb_hagent_code {
    type: string
    sql: ${TABLE}.SKYB_HAGENT_CODE ;;
  }

  dimension: skyb_hagent_name {
    type: string
    sql: ${TABLE}.SKYB_HAGENT_NAME ;;
  }

  dimension: skyb_iata_airl_code {
    type: string
    sql: ${TABLE}.SKYB_IATA_AIRL_CODE ;;
  }

  dimension: skyb_iata_cnty_code {
    type: string
    sql: ${TABLE}.SKYB_IATA_CNTY_CODE ;;
  }

  dimension: skyb_icao_airl_code {
    type: string
    sql: ${TABLE}.SKYB_ICAO_AIRL_CODE ;;
  }

  dimension: skyb_icao_cnty_code {
    type: string
    sql: ${TABLE}.SKYB_ICAO_CNTY_CODE ;;
  }

  dimension: skyb_oper_code {
    type: string
    sql: ${TABLE}.SKYB_OPER_CODE ;;
  }

  dimension: skyb_oper_name {
    type: string
    sql: ${TABLE}.SKYB_OPER_NAME ;;
  }

  dimension: skyb_prev_custid {
    type: string
    sql: ${TABLE}.SKYB_PREV_CUSTID ;;
  }

  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }

  dimension: stcd3 {
    type: string
    sql: ${TABLE}.STCD3 ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.STREET ;;
  }

  dimension: tax_numb_1 {
    type: string
    sql: ${TABLE}.TAX_NUMB_1 ;;
  }

  dimension: tax_numb_2 {
    type: string
    sql: ${TABLE}.TAX_NUMB_2 ;;
  }

  dimension: temp_expired_flag {
    type: string
    sql: ${TABLE}.TEMP_EXPIRED_FLAG ;;
  }

  dimension: temp_type {
    type: string
    sql: ${TABLE}.TEMP_TYPE ;;
  }

  dimension: trading_partner {
    type: string
    sql: ${TABLE}.TRADING_PARTNER ;;
  }

  dimension: txtmd_name {
    type: string
    sql: ${TABLE}.TXTMD_NAME ;;
  }

  dimension: usage_ind {
    type: string
    sql: ${TABLE}.USAGE_IND ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.VENDOR ;;
  }

  measure: count {
    type: count
    drill_fields: [skyb_oper_name, skyb_hagent_name, txtmd_name]
  }
}
