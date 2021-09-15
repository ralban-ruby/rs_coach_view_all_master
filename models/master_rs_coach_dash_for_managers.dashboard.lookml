- dashboard: master_rs_coach_dash__v0_1
  title: MASTER - RS Coach Dash - v0.1
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Sit Withs
    name: Sit Withs
    model: rs_coach_actual_for_managers
    explore: topbar
    type: single_value
    fields: [sum_of_sitwiths]
    limit: 500
    dynamic_fields: [{measure: sum_of_sitwiths, based_on: topbar.sitwiths, expression: '',
        label: Sum of Sitwiths, type: sum, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: topbar.scorecard_date
    row: 0
    col: 0
    width: 4
    height: 4
  - title: Scorecards
    name: Scorecards
    model: rs_coach_actual_for_managers
    explore: topbar
    type: single_value
    fields: [sum_of_scorecards]
    limit: 500
    dynamic_fields: [{measure: sum_of_scorecards, based_on: topbar.scorecards, expression: '',
        label: Sum of Scorecards, type: sum, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: topbar.scorecard_date
    row: 0
    col: 4
    width: 4
    height: 4
  - title: Average Service Quality Score
    name: Average Service Quality Score
    model: rs_coach_actual_for_managers
    explore: topbar
    type: single_value
    fields: [sum_of_scorecards, sum_of_totalpoints]
    sorts: [sum_of_scorecards desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_scorecards, based_on: topbar.scorecards, expression: '',
        label: Sum of Scorecards, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_totalpoints, based_on: topbar.totalpoints, expression: '',
        label: Sum of Totalpoints, type: sum, _kind_hint: measure, _type_hint: number},
      {_kind_hint: measure, table_calculation: ratio, _type_hint: number, category: table_calculation,
        expression: "${sum_of_totalpoints}/${sum_of_scorecards}          ", label: Ratio,
        value_format: !!null '', value_format_name: percent_2}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [sum_of_scorecards, sum_of_totalpoints]
    series_types: {}
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: topbar.scorecard_date
    row: 0
    col: 9
    width: 3
    height: 4
  - title: Average Score
    name: Average Score
    model: rs_coach_actual_for_managers
    explore: topbar
    type: looker_column
    fields: [topbar.name, sum_of_scorecards, sum_of_totalpoints]
    sorts: [topbar.name]
    limit: 500
    dynamic_fields: [{measure: sum_of_scorecards, based_on: topbar.scorecards, expression: '',
        label: Sum of Scorecards, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_totalpoints, based_on: topbar.totalpoints, expression: '',
        label: Sum of Totalpoints, type: sum, _kind_hint: measure, _type_hint: number},
      {_kind_hint: measure, table_calculation: ratio, _type_hint: number, category: table_calculation,
        expression: "${sum_of_totalpoints}/${sum_of_scorecards}", label: Ratio, value_format: !!null '',
        value_format_name: percent_2}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: ratio, id: ratio, name: Score}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      ratio: "#BBCAF2"
    series_labels:
      ratio: Score
    label_color: ["#b22577"]
    hidden_fields: [sum_of_scorecards, sum_of_totalpoints]
    defaults_version: 1
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: topbar.scorecard_date
    row: 4
    col: 11
    width: 13
    height: 9
  - title: Team Availability - Most Recent
    name: Team Availability - Most Recent
    model: rs_coach_actual_for_managers
    explore: avail
    type: single_value
    fields: [sum_of_avail, sum_of_total]
    filters:
      avail.nominaldate_date: Yesterday
    limit: 500
    dynamic_fields: [{measure: sum_of_avail, based_on: avail.avail, expression: '',
        label: Sum of Avail, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_total, based_on: avail.total, expression: '', label: Sum of
          Total, type: sum, _kind_hint: measure, _type_hint: number}, {_kind_hint: measure,
        table_calculation: ratio, _type_hint: number, category: table_calculation,
        expression: "${sum_of_avail}/${sum_of_total}", label: Ratio, value_format: !!null '',
        value_format_name: percent_2}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [sum_of_avail, sum_of_total]
    series_types: {}
    listen:
      'Supervisor ': primarylink.supervisor_primary
    row: 13
    col: 0
    width: 8
    height: 7
  - title: Sit Withs
    name: Sit Withs (2)
    model: rs_coach_actual_for_managers
    explore: topbar
    type: looker_column
    fields: [topbar.name, sum_of_sitwiths]
    sorts: [topbar.name]
    limit: 500
    dynamic_fields: [{measure: sum_of_sitwiths, based_on: topbar.sitwiths, expression: '',
        label: Sum of Sitwiths, type: sum, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_sitwiths, id: sum_of_sitwiths,
            name: Sitwiths}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      sum_of_sitwiths: "#BBCAF2"
    series_labels:
      sum_of_sitwiths: Sitwiths
    label_color: ["#b22577"]
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: ''}]
    defaults_version: 1
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: topbar.scorecard_date
    row: 4
    col: 0
    width: 11
    height: 9
  - title: Availability
    name: Availability
    model: rs_coach_actual_for_managers
    explore: avail
    type: looker_column
    fields: [primarylink.name, sum_of_avail, sum_of_total]
    filters:
      primarylink.name: "-NULL"
    sorts: [primarylink.name]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: ratio, _type_hint: number,
        category: table_calculation, expression: "${sum_of_avail}/${sum_of_total}",
        label: Ratio, value_format: !!null '', value_format_name: percent_2}, {measure: sum_of_avail,
        based_on: avail.avail, expression: '', label: Sum of Avail, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_total, based_on: avail.total, expression: '',
        label: Sum of Total, type: sum, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: ratio, id: ratio, name: Availability}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      ratio: "#BBCAF2"
    series_labels:
      ratio: Availability
    label_color: ["#b22577"]
    reference_lines: [{reference_type: range, line_value: mean, range_end: max, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000",
        range_start: ".86", label: 'Goal: 86%'}]
    hidden_fields: [sum_of_avail, sum_of_total]
    defaults_version: 1
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: avail.nominaldate_date
    row: 13
    col: 8
    width: 16
    height: 7
  - title: Average Handle Time
    name: Average Handle Time
    model: rs_coach_actual_for_managers
    explore: talktime_call
    type: looker_column
    fields: [primarylink.name, sum_of_calls, sum_of_seconds]
    filters:
      primarylink.name: "-NULL"
    sorts: [primarylink.name]
    limit: 500
    dynamic_fields: [{measure: sum_of_calls, based_on: talktime_call.calls, expression: '',
        label: Sum of Calls, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_seconds, based_on: talktime_call.seconds, expression: '', label: Sum
          of Seconds, type: sum, _kind_hint: measure, _type_hint: number}, {_kind_hint: measure,
        table_calculation: aht, _type_hint: number, category: table_calculation, expression: "${sum_of_seconds}/${sum_of_calls}",
        label: " AHT", value_format: !!null '', value_format_name: decimal_0}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: aht, id: aht, name: " AHT"}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      aht: "#BBCAF2"
    label_color: ["#b22577"]
    reference_lines: [{reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000",
        range_start: '115', range_end: '0', label: 'Goal: 115s'}]
    trend_lines: []
    hidden_fields: [sum_of_calls, sum_of_seconds]
    defaults_version: 1
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: talktime_call.date_date
    row: 20
    col: 0
    width: 13
    height: 6
  - title: After Call Work
    name: After Call Work
    model: rs_coach_actual_for_managers
    explore: acw_call
    type: looker_column
    fields: [primarylink.name, sum_of_calls, sum_of_seconds]
    filters:
      primarylink.name: "-NULL"
    sorts: [primarylink.name]
    limit: 500
    dynamic_fields: [{measure: sum_of_calls, based_on: acw_call.calls, expression: '',
        label: Sum of Calls, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_seconds, based_on: acw_call.seconds, expression: '', label: Sum
          of Seconds, type: sum, _kind_hint: measure, _type_hint: number}, {_kind_hint: measure,
        table_calculation: acw, _type_hint: number, category: table_calculation, expression: "${sum_of_seconds}/${sum_of_calls}",
        label: ACW, value_format: !!null '', value_format_name: decimal_0}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: acw, id: acw, name: ACW}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_colors:
      acw: "#BBCAF2"
    label_color: ["#b22577"]
    reference_lines: [{reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000",
        range_start: '25', range_end: '0', label: 'Goal: 25s'}]
    defaults_version: 1
    hidden_fields: [sum_of_calls, sum_of_seconds]
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: acw_call.date_date
    row: 20
    col: 13
    width: 11
    height: 6
  - title: ACW & NoACD
    name: ACW & NoACD
    model: rs_coach_actual_for_managers
    explore: noacd_call
    type: looker_column
    fields: [primarylink.name, sum_of_calls, sum_of_seconds]
    filters:
      primarylink.name: "-NULL"
    sorts: [primarylink.name]
    limit: 500
    dynamic_fields: [{measure: sum_of_calls, based_on: noacd_call.calls, expression: '',
        label: Sum of Calls, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_seconds, based_on: noacd_call.seconds, expression: '', label: Sum
          of Seconds, type: sum, _kind_hint: measure, _type_hint: number}, {_kind_hint: measure,
        table_calculation: noacd, _type_hint: number, category: table_calculation,
        expression: "${sum_of_seconds}/${sum_of_calls}", label: NoACD, value_format: !!null '',
        value_format_name: decimal_0}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: noacd, id: noacd, name: NoACD}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_colors:
      noacd: "#BBCAF2"
    label_color: ["#b22577"]
    hidden_fields: [sum_of_calls, sum_of_seconds]
    defaults_version: 1
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: noacd_call.date_date
    row: 26
    col: 0
    width: 13
    height: 7
  - title: Be Right Back
    name: Be Right Back
    model: rs_coach_actual_for_managers
    explore: brb
    type: looker_column
    fields: [primarylink.name, sum_of_seconds, sum_of_total]
    filters:
      primarylink.name: "-NULL"
    sorts: [primarylink.name]
    limit: 500
    dynamic_fields: [{measure: sum_of_seconds, based_on: brb.seconds, expression: '',
        label: Sum of Seconds, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_total, based_on: brb.total, expression: '', label: Sum of Total,
        type: sum, _kind_hint: measure, _type_hint: number}, {_kind_hint: measure,
        table_calculation: brb_ratio, _type_hint: number, category: table_calculation,
        expression: "${sum_of_seconds}/${sum_of_total}", label: BRB Ratio, value_format: !!null '',
        value_format_name: percent_2}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: brb_ratio, id: brb_ratio,
            name: BRB Ratio}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      brb_ratio: "#BBCAF2"
    label_color: ["#b22577"]
    reference_lines: [{reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000",
        range_start: ".05", range_end: '0', label: 'Goal: 5%'}]
    defaults_version: 1
    hidden_fields: [sum_of_seconds, sum_of_total]
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: brb.date_date
    row: 26
    col: 13
    width: 11
    height: 7
  - title: Errors - Total
    name: Errors - Total
    model: rs_coach_actual_for_managers
    explore: errors
    type: single_value
    fields: [count_of_caseid]
    limit: 500
    dynamic_fields: [{measure: count_of_caseid, based_on: errors.caseid, expression: '',
        label: Count of Caseid, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: errors.date_error_occurred_c_date
    row: 33
    col: 0
    width: 6
    height: 7
  - title: Errors
    name: Errors
    model: rs_coach_actual_for_managers
    explore: errors
    type: looker_column
    fields: [primarylink.name, count_of_caseid]
    filters:
      primarylink.name: "-NULL"
    sorts: [primarylink.name]
    limit: 500
    dynamic_fields: [{measure: count_of_caseid, based_on: errors.caseid, expression: '',
        label: Count of Caseid, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: count_of_caseid, id: count_of_caseid,
            name: Count of Caseid}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      count_of_caseid: "#BBCAF2"
    label_color: ["#b22577"]
    defaults_version: 1
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: errors.date_error_occurred_c_date
    row: 33
    col: 6
    width: 7
    height: 7
  - title: Long Offers
    name: Long Offers
    model: rs_coach_actual_for_managers
    explore: longoffers
    type: looker_column
    fields: [primarylink.name, sum_of_longoffers, sum_of_total_calls]
    filters:
      primarylink.name: "-NULL"
      longoffers.longoffers: NOT NULL
      longoffers.total_calls: NOT NULL
    sorts: [primarylink.name]
    limit: 500
    dynamic_fields: [{measure: sum_of_longoffers, based_on: longoffers.longoffers,
        expression: '', label: Sum of Longoffers, type: sum, _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_total_calls, based_on: longoffers.total_calls,
        expression: '', label: Sum of Total Calls, type: sum, _kind_hint: measure,
        _type_hint: number}, {_kind_hint: measure, table_calculation: long_offer_ratio,
        _type_hint: number, category: table_calculation, expression: "${sum_of_longoffers}/${sum_of_total_calls}",
        label: Long Offer Ratio, value_format: !!null '', value_format_name: percent_2}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: long_offer_ratio, id: long_offer_ratio,
            name: Long Offer Ratio}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      long_offer_ratio: "#BBCAF2"
    label_color: ["#b22577"]
    reference_lines: [{reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000",
        range_start: ".05", range_end: '0', label: 'Goal: 5%'}]
    hidden_fields: [sum_of_longoffers, sum_of_total_calls]
    defaults_version: 1
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: longoffers.date_date
    row: 33
    col: 13
    width: 11
    height: 7
  - title: Connections - Total
    name: Connections - Total
    model: rs_coach_actual_for_managers
    explore: connections
    type: single_value
    fields: [sum_of_total]
    limit: 500
    dynamic_fields: [{measure: sum_of_total, based_on: connections.total, expression: '',
        label: Sum of Total, type: sum, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: connections.datecreated_date
    row: 40
    col: 15
    width: 4
    height: 6
  - title: Connections
    name: Connections
    model: rs_coach_actual_for_managers
    explore: connections
    type: looker_column
    fields: [primarylink.name, connections.type, sum_of_total]
    pivots: [connections.type]
    filters:
      primarylink.name: "-NULL"
    sorts: [sum_of_total desc 0, connections.type]
    limit: 500
    dynamic_fields: [{measure: sum_of_total, based_on: connections.total, expression: '',
        label: Sum of Total, type: sum, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_total, id: Bomb
              Bomb - sum_of_total, name: Bomb Bomb}, {axisId: sum_of_total, id: Note
              Card - sum_of_total, name: Note Card}, {axisId: sum_of_total, id: WoW
              Gift - sum_of_total, name: WoW Gift}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Bomb Bomb - sum_of_total: "#BBCAF2"
      Note Card - sum_of_total: "#F7D68C"
    defaults_version: 1
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: connections.datecreated_date
    row: 40
    col: 0
    width: 15
    height: 8
  - title: Total Calls
    name: Total Calls
    model: rs_coach_actual_for_managers
    explore: totalcalls_supervisor
    type: single_value
    fields: [sum_of_calls]
    limit: 500
    dynamic_fields: [{measure: sum_of_calls, based_on: totalcalls_supervisor.calls,
        expression: '', label: Sum of Calls, type: sum, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: totalcalls_supervisor.date_date
    row: 0
    col: 13
    width: 3
    height: 4
  - title: Calls by Day
    name: Calls by Day
    model: rs_coach_actual_for_managers
    explore: totalcalls_supervisor
    type: looker_column
    fields: [totalcalls_supervisor.date_date, sum_of_calls]
    fill_fields: [totalcalls_supervisor.date_date]
    sorts: [totalcalls_supervisor.date_date desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_calls, based_on: totalcalls_supervisor.calls,
        expression: '', label: Sum of Calls, type: sum, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_calls, id: sum_of_calls,
            name: Calls}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    series_types: {}
    series_colors:
      sum_of_calls: "#BBCAF2"
    series_labels:
      sum_of_calls: Calls
    label_color: ["#b22577"]
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      'Supervisor ': primarylink.supervisor_primary
      Scorecard Date: totalcalls_supervisor.date_date
    row: 0
    col: 16
    width: 8
    height: 4
  filters:
  - name: Scorecard Date
    title: Scorecard Date
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: rs_coach_actual_for_managers
    explore: topbar
    listens_to_filters: []
    field: topbar.scorecard_date
  - name: 'Supervisor '
    title: 'Supervisor '
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: rs_coach_actual_for_managers
    explore: topbar
    listens_to_filters: []
    field: primarylink.supervisor_primary
