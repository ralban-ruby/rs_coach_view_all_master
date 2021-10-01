view: primarylink {
  sql_table_name: "RS"."PRIMARYLINK"
    ;;

  dimension: employee_code {
    type: number
    sql: ${TABLE}."EMPLOYEE_CODE" ;;
  }

  dimension: hire_date {
    type: date
    sql: ${TABLE}."hire_date" ;;
  }

  dimension: tenure {
    type: number
    sql: ${TABLE}."tenure" ;;
  }

  dimension: tenure_tier {
    group_label: "Tenure"
    label: "By Tier"
    style: integer
    type: tier
    tiers: [0,60,120]
    sql: ${TABLE}."TENURE" ;;
  }

  dimension: employeeid {
    type: number
    value_format_name: id
    sql: ${TABLE}."EMPLOYEEID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: supervisor_primary {
    type: string
    sql: ${TABLE}."SUPERVISOR_PRIMARY" ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}."TEAM" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
