view: aht {
  sql_table_name: "RS"."AHT"
    ;;

  dimension: calls {
    type: number
    sql: ${TABLE}."CALLS" ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: employeecode {
    type: string
    sql: ${TABLE}."EMPLOYEECODE" ;;
  }

  dimension: employeeid {
    type: number
    value_format_name: id
    sql: ${TABLE}."EMPLOYEEID" ;;
  }

  dimension: handletime_minutes {
    type: number
    sql: ${TABLE}."HANDLETIME_MINUTES" ;;
  }

  dimension: handletime_seconds {
    type: number
    sql: ${TABLE}."HANDLETIME_SECONDS" ;;
  }

  dimension: handletime_seconds1 {
    type: number
    sql: ${TABLE}."HANDLETIME_SECONDS1" ;;
  }

  dimension: receptionistdescription {
    type: string
    sql: ${TABLE}."RECEPTIONISTDESCRIPTION" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
