view: wrapup_code {
  sql_table_name: "RS"."WRAPUP_CODE"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: call_result_description {
    label:"Wrap-up Code"
    type: string
    sql: ${TABLE}."CALL_RESULT_DESCRIPTION" ;;
  }

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

  dimension: employeeid {
    type: number
    value_format_name: id
    sql: ${TABLE}."EMPLOYEEID" ;;
  }

  dimension: receptionist_description {
    label: "Name"
    type: string
    sql: ${TABLE}."RECEPTIONIST_DESCRIPTION" ;;
  }

  dimension: supervisor_primary {
    label: "Coach"
    type: string
    sql: ${TABLE}."SUPERVISOR_PRIMARY" ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}."TEAM" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
