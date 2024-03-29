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

  dimension: Avail_goal {
    type :  string
    case: {
      when: {
        sql: ${TABLE}.tenure >= 0 and ${TABLE}.tenure < 60 ;;
        label: "82% or above"
      }
      when: {
        sql: ${TABLE}.tenure >= 60 and ${TABLE}.tenure < 120 ;;
        label: "84% or above"
      }
      when: {
        sql: ${TABLE}.tenure >= 120 ;;
        label: "86% or above"
      }
      when: {
        sql: ${TABLE}.tenure < 0 ;;
        label: "NA"
      }
    }
  }

  dimension: ACW_goal {
    type :  string
    case: {
      when: {
        sql: ${TABLE}.tenure >= 0 and ${TABLE}.tenure < 60 ;;
        label: "35 seconds or less"
      }
      when: {
        sql: ${TABLE}.tenure >= 60 and ${TABLE}.tenure < 120 ;;
        label: "30 seconds or less"
      }
      when: {
        sql: ${TABLE}.tenure >= 120 ;;
        label: "25 seconds or less"
      }
      when: {
        sql: ${TABLE}.tenure < 0 ;;
        label: "NA"
      }
    }
  }

  dimension: SQR_goal {
    type :  string
    case: {
      when: {
        sql: ${TABLE}.tenure >= 0 and ${TABLE}.tenure < 60 ;;
        label: "85% or above"
      }
      when: {
        sql: ${TABLE}.tenure >= 60 and ${TABLE}.tenure < 120 ;;
        label: "87% or above"
      }
      when: {
        sql: ${TABLE}.tenure >= 120 ;;
        label: "90% or above"
      }
      when: {
        sql: ${TABLE}.tenure < 0 ;;
        label: "NA"
      }
    }
  }

  dimension: ROS_test_team {
    type :  string
    case: {
      when: {
        sql: ${TABLE}.name IN ('Chris Page','Angelica Thomas','Hailey Fuller')  ;;
        label: "Alpha"
      }
      when: {
        sql: ${TABLE}.name IN ('Amy Gray','Anthony Contreras','Cameron Esch','Charles Williams',
                                'Crystal Castro','Jenn Schaaf','Jodie Hess', 'Karrie Elkins', 'Katy Aman',
                                'Keri Stewart','Lauren Phillips','Maria Guzman','Marissa Hunt','Mellissa Dowd',
                                'Mercedes Alvarado','Neena Nuhring','Rachel Rhodus','Sharene Neidig','Zach Duling','Zach Kramberg');;
        label: "Beta"
      }
      }
    }


  measure: count {
    type: count
    drill_fields: [name]
  }
}
