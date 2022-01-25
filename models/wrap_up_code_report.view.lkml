view: wrap_up_code_report {
  derived_table: {
    sql: SELECT cast(A.START_TIME_UTC AS date) as date, A.RECEPTIONIST_DESCRIPTION ,E.EMPLOYEEID ,
        E.TEAM ,E.SUPERVISOR_PRIMARY, CALL_RESULT_DESCRIPTION as wrap_up_code ,count(DISTINCT A.RUBY_CALL_UUID)as Calls
      FROM ACTIVITIES_DB.ACTIVITY_ACTIVITY.ACTIVITIES A
        JOIN FIVETRAN_DB.PEARL_EDW_OPS.EMPLOYEE_LOOKUP_ALL E
          ON  A.RECEPTIONIST_DESCRIPTION = E."NAME"
      WHERE START_TIME_UTC >='2021-01-01' AND RECEPTIONIST_DESCRIPTION IS NOT NULL AND E."_FIVETRAN_DELETED" != 1
      AND  A.CALL_TYPE_DESCRIPTION NOT IN ('Programmed Transfer.','RoboCall.') AND CALL_RESULT_DESCRIPTION !='Internal Test Call from Ruby'
      GROUP BY 1,2,3,4,5,6
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension:date {
    type: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: receptionist_description {
    type: string
    sql: ${TABLE}."RECEPTIONIST_DESCRIPTION" ;;
  }

  dimension: employeeid {
    type: number
    sql: ${TABLE}."EMPLOYEEID" ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}."TEAM" ;;
  }

  dimension: supervisor_primary {
    type: string
    sql: ${TABLE}."SUPERVISOR_PRIMARY" ;;
  }

  dimension: wrap_up_code {
    type: string
    sql: ${TABLE}."WRAP_UP_CODE" ;;
  }

  dimension: calls {
    type: number
    sql: ${TABLE}."CALLS" ;;
  }

  set: detail {
    fields: [
      date,
      receptionist_description,
      employeeid,
      team,
      supervisor_primary,
      wrap_up_code,
      calls
    ]
  }
}
