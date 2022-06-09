- dashboard: looker_training_asha
  title: Looker_training_asha
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: JgMfy0yxyxtM1BVJUISeMs
  elements:
  - title: Total_Sessions
    name: Total_Sessions
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.distinct_session_count]
    filters:
      dialogflow_cleaned_logs.session_id: ''
      dialogflow_cleaned_logs.count: ''
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_null_points: true
    interpolation: linear
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 0
    col: 0
    width: 5
    height: 4
  - title: Avg Sessions Per Day
    name: Avg Sessions Per Day
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.avg_sessions_per_day]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 0
    col: 5
    width: 5
    height: 4
  - title: Avg queries/session
    name: Avg queries/session
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.avg_queries_per_session]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 4
    col: 5
    width: 5
    height: 4
  - title: Total Queries
    name: Total Queries
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.queries_count]
    limit: 500
    query_timezone: America/Los_Angeles
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
    series_types: {}
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 4
    col: 0
    width: 5
    height: 4
  - title: Total Handled Queries
    name: Total Handled Queries
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.count_handled_queries]
    limit: 500
    query_timezone: America/Los_Angeles
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
    series_types: {}
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 8
    col: 5
    width: 5
    height: 4
  - title: Total Unhandled Queries
    name: Total Unhandled Queries
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.count_fallback_queries]
    limit: 500
    query_timezone: America/Los_Angeles
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
    series_types: {}
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 8
    col: 0
    width: 5
    height: 4
  - title: Success_rate
    name: Success_rate
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.success_rate]
    limit: 500
    query_timezone: America/Los_Angeles
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
    series_types: {}
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 12
    col: 0
    width: 5
    height: 4
  - title: Avg Sentiment Score
    name: Avg Sentiment Score
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [dialogflow_cleaned_logs.avg_sentiment_score]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    label_font_size: 3
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    circleThickness: 0.5
    circleFillGap: 0.5
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
    defaults_version: 0
    series_types: {}
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 16
    col: 0
    width: 5
    height: 4
  - title: Weekly Average Sentiment Trend
    name: Weekly Average Sentiment Trend
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: looker_column
    fields: [dialogflow_cleaned_logs.date_week, avg_sentiment_score]
    fill_fields: [dialogflow_cleaned_logs.date_week]
    sorts: [dialogflow_cleaned_logs.date_week desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: avg_sentiment_score,
        value_format: !!null '', value_format_name: !!null '', based_on: dialogflow_cleaned_logs.sentiment_score,
        _kind_hint: measure, measure: avg_sentiment_score, type: average, _type_hint: number}]
    query_timezone: America/Los_Angeles
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
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.sentiment_score,
            id: dialogflow_cleaned_logs.sentiment_score, name: Sentiment Score}],
        showLabels: true, showValues: true, maxValue: 1, minValue: -1, unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_labels: {}
    trend_lines: []
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    label_font_size: 3
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    circleThickness: 0.5
    circleFillGap: 0.5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 10
    col: 10
    width: 10
    height: 10
  - title: Query Sentiment Distribution
    name: Query Sentiment Distribution
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: looker_pie
    fields: [dialogflow_cleaned_logs.sentiment_bucketing, dialogflow_cleaned_logs.queries_count]
    sorts: [dialogflow_cleaned_logs.sentiment_bucketing]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: avg_sentiment_score,
        value_format: !!null '', value_format_name: !!null '', based_on: dialogflow_cleaned_logs.sentiment_score,
        _kind_hint: measure, measure: avg_sentiment_score, type: average, _type_hint: number}]
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.sentiment_score,
            id: dialogflow_cleaned_logs.sentiment_score, name: Sentiment Score}],
        showLabels: true, showValues: true, maxValue: 1, minValue: -1, unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 5, type: linear}]
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
    series_types: {}
    point_style: none
    series_labels: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    label_font_size: 3
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    circleThickness: 0.5
    circleFillGap: 0.5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 20
    col: 0
    width: 10
    height: 7
  - title: Busiest Hours
    name: Busiest Hours
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: looker_funnel
    fields: [dialogflow_cleaned_logs.queries_count, dialogflow_cleaned_logs.grouping_of_hours]
    sorts: [dialogflow_cleaned_logs.queries_count desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: avg_sentiment_score,
        value_format: !!null '', value_format_name: !!null '', based_on: dialogflow_cleaned_logs.sentiment_score,
        _kind_hint: measure, measure: avg_sentiment_score, type: average, _type_hint: number}]
    query_timezone: America/Los_Angeles
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.sentiment_score,
            id: dialogflow_cleaned_logs.sentiment_score, name: Sentiment Score}],
        showLabels: true, showValues: true, maxValue: 1, minValue: -1, unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 5, type: linear}]
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
    series_types: {}
    point_style: none
    series_labels: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    label_font_size: 3
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    circleThickness: 0.5
    circleFillGap: 0.5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 0
    col: 10
    width: 10
    height: 10
  - title: User Utterances
    name: User Utterances
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: looker_grid
    fields: [dialogflow_cleaned_logs.query_text, dialogflow_cleaned_logs.queries_count]
    sorts: [dialogflow_cleaned_logs.queries_count desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: avg_sentiment_score,
        value_format: !!null '', value_format_name: !!null '', based_on: dialogflow_cleaned_logs.sentiment_score,
        _kind_hint: measure, measure: avg_sentiment_score, type: average, _type_hint: number}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      dialogflow_cleaned_logs.queries_count: Total Sessions
      dialogflow_cleaned_logs.query_text: SESSIONS
    series_cell_visualizations:
      dialogflow_cleaned_logs.queries_count:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.sentiment_score,
            id: dialogflow_cleaned_logs.sentiment_score, name: Sentiment Score}],
        showLabels: true, showValues: true, maxValue: 1, minValue: -1, unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 5, type: linear}]
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
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    label_font_size: 3
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    circleThickness: 0.5
    circleFillGap: 0.5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    value_labels: legend
    label_type: labPer
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 20
    col: 10
    width: 10
    height: 7
  - title: Top 10 Negative Queries
    name: Top 10 Negative Queries
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: looker_grid
    fields: [dialogflow_cleaned_logs.sentiment_score, dialogflow_cleaned_logs.query_text]
    sorts: [dialogflow_cleaned_logs.sentiment_score]
    limit: 10
    dynamic_fields: [{category: measure, expression: !!null '', label: avg_sentiment_score,
        value_format: !!null '', value_format_name: !!null '', based_on: dialogflow_cleaned_logs.sentiment_score,
        _kind_hint: measure, measure: avg_sentiment_score, type: average, _type_hint: number}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      dialogflow_cleaned_logs.queries_count: Total Sessions
      dialogflow_cleaned_logs.query_text: SESSIONS
    series_cell_visualizations:
      dialogflow_cleaned_logs.queries_count:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.sentiment_score,
            id: dialogflow_cleaned_logs.sentiment_score, name: Sentiment Score}],
        showLabels: true, showValues: true, maxValue: 1, minValue: -1, unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 5, type: linear}]
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
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    label_font_size: 3
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    circleThickness: 0.5
    circleFillGap: 0.5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    value_labels: legend
    label_type: labPer
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 27
    col: 0
    width: 10
    height: 7
  - title: Top 10 Positive Queries
    name: Top 10 Positive Queries
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: looker_grid
    fields: [dialogflow_cleaned_logs.sentiment_score, dialogflow_cleaned_logs.query_text]
    sorts: [dialogflow_cleaned_logs.sentiment_score desc]
    limit: 10
    dynamic_fields: [{category: measure, expression: !!null '', label: avg_sentiment_score,
        value_format: !!null '', value_format_name: !!null '', based_on: dialogflow_cleaned_logs.sentiment_score,
        _kind_hint: measure, measure: avg_sentiment_score, type: average, _type_hint: number}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      dialogflow_cleaned_logs.queries_count: Total Sessions
      dialogflow_cleaned_logs.query_text: Queries
    series_cell_visualizations:
      dialogflow_cleaned_logs.queries_count:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.sentiment_score,
            id: dialogflow_cleaned_logs.sentiment_score, name: Sentiment Score}],
        showLabels: true, showValues: true, maxValue: 1, minValue: -1, unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 5, type: linear}]
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
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    label_font_size: 3
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    circleThickness: 0.5
    circleFillGap: 0.5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    value_labels: legend
    label_type: labPer
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 27
    col: 10
    width: 10
    height: 7
  - title: Traffic by time
    name: Traffic by time
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: looker_area
    fields: [dialogflow_cleaned_logs.grouping_of_hourly_basis, dialogflow_cleaned_logs.distinct_session_count]
    sorts: [dialogflow_cleaned_logs.grouping_of_hourly_basis]
    limit: 500
    query_timezone: America/Los_Angeles
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    series_types: {}
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 34
    col: 10
    width: 10
    height: 7
  - title: Conversation Distribution vs Duration
    name: Conversation Distribution vs Duration
    model: asha_looker_training
    explore: session_level_view
    type: looker_column
    fields: [session_level_view.duration_grouped, session_level_view.distinct_session_count]
    sorts: [session_level_view.duration_grouped]
    limit: 500
    query_timezone: America/Los_Angeles
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
    listen:
      Intent: session_level_view.entry_intent
      Date: session_level_view.date_date
    row: 34
    col: 0
    width: 10
    height: 7
  - title: Avg Sentiment Score vs Call Duration
    name: Avg Sentiment Score vs Call Duration
    model: asha_looker_training
    explore: session_level_view
    type: looker_column
    fields: [session_level_view.duration_grouped, session_level_view.avg_sentiment_score]
    sorts: [session_level_view.duration_grouped]
    limit: 500
    query_timezone: America/Los_Angeles
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
    listen:
      Intent: session_level_view.entry_intent
      Date: session_level_view.date_date
    row: 55
    col: 10
    width: 10
    height: 7
  - title: Traffic by Entry Intent
    name: Traffic by Entry Intent
    model: asha_looker_training
    explore: session_level_view
    type: looker_column
    fields: [session_level_view.entry_intent, session_level_view.distinct_session_count]
    sorts: [session_level_view.distinct_session_count desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    listen:
      Intent: session_level_view.entry_intent
      Date: session_level_view.date_date
    row: 41
    col: 10
    width: 10
    height: 7
  - title: Traffic by Exit Intent
    name: Traffic by Exit Intent
    model: asha_looker_training
    explore: session_level_view
    type: looker_column
    fields: [session_level_view.distinct_session_count, session_level_view.exit_intent]
    sorts: [session_level_view.distinct_session_count desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    listen:
      Intent: session_level_view.exit_intent
      Date: session_level_view.date_date
    row: 41
    col: 0
    width: 10
    height: 7
  - title: Total Queries vs Call Duration
    name: Total Queries vs Call Duration
    model: asha_looker_training
    explore: session_level_view
    type: looker_column
    fields: [session_level_view.duration_grouped, session_level_view.total_queries]
    sorts: [session_level_view.duration_grouped]
    limit: 500
    query_timezone: America/Los_Angeles
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
    listen:
      Intent: session_level_view.entry_intent
      Date: session_level_view.date_date
    row: 48
    col: 0
    width: 10
    height: 7
  - title: Intent Wise Information
    name: Intent Wise Information
    model: asha_looker_training
    explore: session_level_view
    type: looker_grid
    fields: [session_level_view.exit_intent, session_level_view.distinct_session_count,
      session_level_view.avg_sentiment_score]
    sorts: [session_level_view.exit_intent]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_types: {}
    listen:
      Intent: session_level_view.entry_intent
      Date: session_level_view.date_date
    row: 48
    col: 10
    width: 10
    height: 7
  - title: Intent Cooccurance
    name: Intent Cooccurance
    model: asha_looker_training
    explore: intent_cooccurances
    type: looker_column
    fields: [intent_cooccurances.parent_intent, intent_cooccurances.child_intent,
      total_frequency]
    pivots: [intent_cooccurances.parent_intent]
    filters: {}
    sorts: [intent_cooccurances.parent_intent, total_frequency desc 1]
    limit: 500
    dynamic_fields: [{category: dimension, description: '', label: Parent Intent Groups,
        value_format: !!null '', value_format_name: !!null '', calculation_type: group_by,
        dimension: parent_intent_groups, args: [intent_cooccurances.parent_intent,
          [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: '', filter: ''}],
          !!null ''], _kind_hint: dimension, _type_hint: string}, {category: dimension,
        description: '', label: Parent Intent Groups, value_format: !!null '', value_format_name: !!null '',
        calculation_type: group_by, dimension: parent_intent_groups_1, args: [intent_cooccurances.parent_intent,
          [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: '', filter: ''}],
          Other], _kind_hint: dimension, _type_hint: string}, {category: measure,
        expression: !!null '', label: total frequency, value_format: !!null '', value_format_name: !!null '',
        based_on: intent_cooccurances.frequency, _kind_hint: measure, measure: total_frequency,
        type: sum, _type_hint: number}]
    query_timezone: America/Los_Angeles
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
    stacking: normal
    limit_displayed_rows: true
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: AcceptedInsurance -
              total_frequency, id: AcceptedInsurance - total_frequency, name: AcceptedInsurance},
          {axisId: AcceptInsurance - total_frequency, id: AcceptInsurance - total_frequency,
            name: AcceptInsurance}, {axisId: AcceptInsurance - fallback - total_frequency,
            id: AcceptInsurance - fallback - total_frequency, name: AcceptInsurance
              - fallback}, {axisId: AcceptInsurance - no - total_frequency, id: AcceptInsurance
              - no - total_frequency, name: AcceptInsurance - no}, {axisId: AcceptInsurance
              - yes - total_frequency, id: AcceptInsurance - yes - total_frequency,
            name: AcceptInsurance - yes}, {axisId: AcceptInsurance - yes - fallback
              - total_frequency, id: AcceptInsurance - yes - fallback - total_frequency,
            name: AcceptInsurance - yes - fallback}, {axisId: Acknowledge - total_frequency,
            id: Acknowledge - total_frequency, name: Acknowledge}, {axisId: Acknowledge
              - fallback - total_frequency, id: Acknowledge - fallback - total_frequency,
            name: Acknowledge - fallback}, {axisId: Acknowledge - no - total_frequency,
            id: Acknowledge - no - total_frequency, name: Acknowledge - no}, {axisId: Acknowledge
              - yes - total_frequency, id: Acknowledge - yes - total_frequency, name: Acknowledge
              - yes}, {axisId: Acknowledge - yes - fallback - total_frequency, id: Acknowledge
              - yes - fallback - total_frequency, name: Acknowledge - yes - fallback},
          {axisId: AppointmentPsychiatrist - total_frequency, id: AppointmentPsychiatrist
              - total_frequency, name: AppointmentPsychiatrist}, {axisId: AppointmentPsychiatrist
              - fallback - total_frequency, id: AppointmentPsychiatrist - fallback
              - total_frequency, name: AppointmentPsychiatrist - fallback}, {axisId: AppointmentPsychiatrist
              - no - total_frequency, id: AppointmentPsychiatrist - no - total_frequency,
            name: AppointmentPsychiatrist - no}, {axisId: AppointmentPsychiatrist
              - no - fallback - total_frequency, id: AppointmentPsychiatrist - no
              - fallback - total_frequency, name: AppointmentPsychiatrist - no - fallback},
          {axisId: AppointmentPsychiatrist - no - yes - total_frequency, id: AppointmentPsychiatrist
              - no - yes - total_frequency, name: AppointmentPsychiatrist - no - yes},
          {axisId: AppointmentPsychiatrist - yes - total_frequency, id: AppointmentPsychiatrist
              - yes - total_frequency, name: AppointmentPsychiatrist - yes}, {axisId: AppointmentTherapist
              - total_frequency, id: AppointmentTherapist - total_frequency, name: AppointmentTherapist},
          {axisId: AppointmentTherapist - fallback - total_frequency, id: AppointmentTherapist
              - fallback - total_frequency, name: AppointmentTherapist - fallback},
          {axisId: AppointmentTherapist - no - total_frequency, id: AppointmentTherapist
              - no - total_frequency, name: AppointmentTherapist - no}, {axisId: AppointmentTherapist
              - yes - total_frequency, id: AppointmentTherapist - yes - total_frequency,
            name: AppointmentTherapist - yes}, {axisId: AppointmentUnknownProvider
              - total_frequency, id: AppointmentUnknownProvider - total_frequency,
            name: AppointmentUnknownProvider}, {axisId: AppointmentUrgent - total_frequency,
            id: AppointmentUrgent - total_frequency, name: AppointmentUrgent}, {axisId: AppointmentUrgent
              - fallback - total_frequency, id: AppointmentUrgent - fallback - total_frequency,
            name: AppointmentUrgent - fallback}, {axisId: CheckInsurance - total_frequency,
            id: CheckInsurance - total_frequency, name: CheckInsurance}, {axisId: CheckInsurance
              - fallback - total_frequency, id: CheckInsurance - fallback - total_frequency,
            name: CheckInsurance - fallback}, {axisId: CoPay - total_frequency, id: CoPay
              - total_frequency, name: CoPay}, {axisId: CreditCard - total_frequency,
            id: CreditCard - total_frequency, name: CreditCard}, {axisId: CreditCard
              - no - total_frequency, id: CreditCard - no - total_frequency, name: CreditCard
              - no}, {axisId: Default Fallback Intent - total_frequency, id: Default
              Fallback Intent - total_frequency, name: Default Fallback Intent}, {
            axisId: Default Fallback Intent - fallback - total_frequency, id: Default
              Fallback Intent - fallback - total_frequency, name: Default Fallback
              Intent - fallback}, {axisId: Default Fallback Intent - no - total_frequency,
            id: Default Fallback Intent - no - total_frequency, name: Default Fallback
              Intent - no}, {axisId: Default Fallback Intent - no - fallback - total_frequency,
            id: Default Fallback Intent - no - fallback - total_frequency, name: Default
              Fallback Intent - no - fallback}, {axisId: Default Fallback Intent -
              yes - total_frequency, id: Default Fallback Intent - yes - total_frequency,
            name: Default Fallback Intent - yes}, {axisId: Default Welcome Intent
              - total_frequency, id: Default Welcome Intent - total_frequency, name: Default
              Welcome Intent}, {axisId: Default Welcome Intent - fallback - total_frequency,
            id: Default Welcome Intent - fallback - total_frequency, name: Default
              Welcome Intent - fallback}, {axisId: FindInsuranceHelpLine - total_frequency,
            id: FindInsuranceHelpLine - total_frequency, name: FindInsuranceHelpLine},
          {axisId: FindInsuranceHelpLine - fallback - total_frequency, id: FindInsuranceHelpLine
              - fallback - total_frequency, name: FindInsuranceHelpLine - fallback},
          {axisId: GetAppointment - total_frequency, id: GetAppointment - total_frequency,
            name: GetAppointment}, {axisId: GetAppointment - fallback - total_frequency,
            id: GetAppointment - fallback - total_frequency, name: GetAppointment
              - fallback}, {axisId: GetMobileNumber - total_frequency, id: GetMobileNumber
              - total_frequency, name: GetMobileNumber}, {axisId: GetMobileNumber
              - fallback - total_frequency, id: GetMobileNumber - fallback - total_frequency,
            name: GetMobileNumber - fallback}, {axisId: HaveAccount - total_frequency,
            id: HaveAccount - total_frequency, name: HaveAccount}, {axisId: LiveAgentTransfer
              - total_frequency, id: LiveAgentTransfer - total_frequency, name: LiveAgentTransfer},
          {axisId: LiveAgentTransfer - fallback - total_frequency, id: LiveAgentTransfer
              - fallback - total_frequency, name: LiveAgentTransfer - fallback}, {
            axisId: LiveAgentTransfer - no - total_frequency, id: LiveAgentTransfer
              - no - total_frequency, name: LiveAgentTransfer - no}, {axisId: LiveAgentTransfer
              - yes - total_frequency, id: LiveAgentTransfer - yes - total_frequency,
            name: LiveAgentTransfer - yes}, {axisId: NoAccount - total_frequency,
            id: NoAccount - total_frequency, name: NoAccount}, {axisId: NoAccount
              - fallback - total_frequency, id: NoAccount - fallback - total_frequency,
            name: NoAccount - fallback}, {axisId: NoAccount - no - total_frequency,
            id: NoAccount - no - total_frequency, name: NoAccount - no}], showLabels: true,
        showValues: true, maxValue: !!null '', minValue: !!null '', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    series_types: {}
    series_colors: {}
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    defaults_version: 1
    listen:
      Intent: intent_cooccurances.child_intent
      Date: intent_cooccurances.date_filter
    row: 69
    col: 0
    width: 22
    height: 12
  - title: Weekly Intent Trend
    name: Weekly Intent Trend
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: looker_line
    fields: [dialogflow_cleaned_logs.count, dialogflow_cleaned_logs.intent_triggered,
      dialogflow_cleaned_logs.date_week]
    pivots: [dialogflow_cleaned_logs.intent_triggered]
    fill_fields: [dialogflow_cleaned_logs.date_week]
    sorts: [dialogflow_cleaned_logs.count desc 0, dialogflow_cleaned_logs.intent_triggered]
    limit: 500
    query_timezone: America/Los_Angeles
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: No of Intents, orientation: left, series: [{axisId: AcceptedInsurance
              - dialogflow_cleaned_logs.count, id: AcceptedInsurance - dialogflow_cleaned_logs.count,
            name: AcceptedInsurance}, {axisId: AcceptInsurance - dialogflow_cleaned_logs.count,
            id: AcceptInsurance - dialogflow_cleaned_logs.count, name: AcceptInsurance},
          {axisId: AcceptInsurance - fallback - dialogflow_cleaned_logs.count, id: AcceptInsurance
              - fallback - dialogflow_cleaned_logs.count, name: AcceptInsurance -
              fallback}, {axisId: AcceptInsurance - no - dialogflow_cleaned_logs.count,
            id: AcceptInsurance - no - dialogflow_cleaned_logs.count, name: AcceptInsurance
              - no}, {axisId: AcceptInsurance - yes - dialogflow_cleaned_logs.count,
            id: AcceptInsurance - yes - dialogflow_cleaned_logs.count, name: AcceptInsurance
              - yes}, {axisId: AcceptInsurance - yes - fallback - dialogflow_cleaned_logs.count,
            id: AcceptInsurance - yes - fallback - dialogflow_cleaned_logs.count,
            name: AcceptInsurance - yes - fallback}, {axisId: Acknowledge - dialogflow_cleaned_logs.count,
            id: Acknowledge - dialogflow_cleaned_logs.count, name: Acknowledge}, {
            axisId: Acknowledge - fallback - dialogflow_cleaned_logs.count, id: Acknowledge
              - fallback - dialogflow_cleaned_logs.count, name: Acknowledge - fallback},
          {axisId: Acknowledge - no - dialogflow_cleaned_logs.count, id: Acknowledge
              - no - dialogflow_cleaned_logs.count, name: Acknowledge - no}, {axisId: Acknowledge
              - yes - dialogflow_cleaned_logs.count, id: Acknowledge - yes - dialogflow_cleaned_logs.count,
            name: Acknowledge - yes}, {axisId: Acknowledge - yes - fallback - dialogflow_cleaned_logs.count,
            id: Acknowledge - yes - fallback - dialogflow_cleaned_logs.count, name: Acknowledge
              - yes - fallback}, {axisId: AppointmentPsychiatrist - dialogflow_cleaned_logs.count,
            id: AppointmentPsychiatrist - dialogflow_cleaned_logs.count, name: AppointmentPsychiatrist},
          {axisId: AppointmentPsychiatrist - fallback - dialogflow_cleaned_logs.count,
            id: AppointmentPsychiatrist - fallback - dialogflow_cleaned_logs.count,
            name: AppointmentPsychiatrist - fallback}, {axisId: AppointmentPsychiatrist
              - no - dialogflow_cleaned_logs.count, id: AppointmentPsychiatrist -
              no - dialogflow_cleaned_logs.count, name: AppointmentPsychiatrist -
              no}, {axisId: AppointmentPsychiatrist - no - fallback - dialogflow_cleaned_logs.count,
            id: AppointmentPsychiatrist - no - fallback - dialogflow_cleaned_logs.count,
            name: AppointmentPsychiatrist - no - fallback}, {axisId: AppointmentPsychiatrist
              - no - yes - dialogflow_cleaned_logs.count, id: AppointmentPsychiatrist
              - no - yes - dialogflow_cleaned_logs.count, name: AppointmentPsychiatrist
              - no - yes}, {axisId: AppointmentPsychiatrist - yes - dialogflow_cleaned_logs.count,
            id: AppointmentPsychiatrist - yes - dialogflow_cleaned_logs.count, name: AppointmentPsychiatrist
              - yes}, {axisId: AppointmentTherapist - dialogflow_cleaned_logs.count,
            id: AppointmentTherapist - dialogflow_cleaned_logs.count, name: AppointmentTherapist},
          {axisId: AppointmentTherapist - fallback - dialogflow_cleaned_logs.count,
            id: AppointmentTherapist - fallback - dialogflow_cleaned_logs.count, name: AppointmentTherapist
              - fallback}, {axisId: AppointmentTherapist - no - dialogflow_cleaned_logs.count,
            id: AppointmentTherapist - no - dialogflow_cleaned_logs.count, name: AppointmentTherapist
              - no}, {axisId: AppointmentTherapist - yes - dialogflow_cleaned_logs.count,
            id: AppointmentTherapist - yes - dialogflow_cleaned_logs.count, name: AppointmentTherapist
              - yes}, {axisId: AppointmentUnknownProvider - dialogflow_cleaned_logs.count,
            id: AppointmentUnknownProvider - dialogflow_cleaned_logs.count, name: AppointmentUnknownProvider},
          {axisId: AppointmentUrgent - dialogflow_cleaned_logs.count, id: AppointmentUrgent
              - dialogflow_cleaned_logs.count, name: AppointmentUrgent}, {axisId: AppointmentUrgent
              - fallback - dialogflow_cleaned_logs.count, id: AppointmentUrgent -
              fallback - dialogflow_cleaned_logs.count, name: AppointmentUrgent -
              fallback}, {axisId: CheckInsurance - dialogflow_cleaned_logs.count,
            id: CheckInsurance - dialogflow_cleaned_logs.count, name: CheckInsurance},
          {axisId: CheckInsurance - fallback - dialogflow_cleaned_logs.count, id: CheckInsurance
              - fallback - dialogflow_cleaned_logs.count, name: CheckInsurance - fallback},
          {axisId: CoPay - dialogflow_cleaned_logs.count, id: CoPay - dialogflow_cleaned_logs.count,
            name: CoPay}, {axisId: CreditCard - dialogflow_cleaned_logs.count, id: CreditCard
              - dialogflow_cleaned_logs.count, name: CreditCard}, {axisId: CreditCard
              - no - dialogflow_cleaned_logs.count, id: CreditCard - no - dialogflow_cleaned_logs.count,
            name: CreditCard - no}, {axisId: Default Fallback Intent - dialogflow_cleaned_logs.count,
            id: Default Fallback Intent - dialogflow_cleaned_logs.count, name: Default
              Fallback Intent}, {axisId: Default Fallback Intent - fallback - dialogflow_cleaned_logs.count,
            id: Default Fallback Intent - fallback - dialogflow_cleaned_logs.count,
            name: Default Fallback Intent - fallback}, {axisId: Default Fallback Intent
              - no - dialogflow_cleaned_logs.count, id: Default Fallback Intent -
              no - dialogflow_cleaned_logs.count, name: Default Fallback Intent -
              no}, {axisId: Default Fallback Intent - no - fallback - dialogflow_cleaned_logs.count,
            id: Default Fallback Intent - no - fallback - dialogflow_cleaned_logs.count,
            name: Default Fallback Intent - no - fallback}, {axisId: Default Fallback
              Intent - yes - dialogflow_cleaned_logs.count, id: Default Fallback Intent
              - yes - dialogflow_cleaned_logs.count, name: Default Fallback Intent
              - yes}, {axisId: Default Welcome Intent - dialogflow_cleaned_logs.count,
            id: Default Welcome Intent - dialogflow_cleaned_logs.count, name: Default
              Welcome Intent}, {axisId: Default Welcome Intent - fallback - dialogflow_cleaned_logs.count,
            id: Default Welcome Intent - fallback - dialogflow_cleaned_logs.count,
            name: Default Welcome Intent - fallback}, {axisId: FindInsuranceHelpLine
              - dialogflow_cleaned_logs.count, id: FindInsuranceHelpLine - dialogflow_cleaned_logs.count,
            name: FindInsuranceHelpLine}, {axisId: FindInsuranceHelpLine - fallback
              - dialogflow_cleaned_logs.count, id: FindInsuranceHelpLine - fallback
              - dialogflow_cleaned_logs.count, name: FindInsuranceHelpLine - fallback},
          {axisId: GetAppointment - dialogflow_cleaned_logs.count, id: GetAppointment
              - dialogflow_cleaned_logs.count, name: GetAppointment}, {axisId: GetAppointment
              - fallback - dialogflow_cleaned_logs.count, id: GetAppointment - fallback
              - dialogflow_cleaned_logs.count, name: GetAppointment - fallback}, {
            axisId: GetMobileNumber - dialogflow_cleaned_logs.count, id: GetMobileNumber
              - dialogflow_cleaned_logs.count, name: GetMobileNumber}, {axisId: GetMobileNumber
              - fallback - dialogflow_cleaned_logs.count, id: GetMobileNumber - fallback
              - dialogflow_cleaned_logs.count, name: GetMobileNumber - fallback},
          {axisId: HaveAccount - dialogflow_cleaned_logs.count, id: HaveAccount -
              dialogflow_cleaned_logs.count, name: HaveAccount}, {axisId: LiveAgentTransfer
              - dialogflow_cleaned_logs.count, id: LiveAgentTransfer - dialogflow_cleaned_logs.count,
            name: LiveAgentTransfer}, {axisId: LiveAgentTransfer - fallback - dialogflow_cleaned_logs.count,
            id: LiveAgentTransfer - fallback - dialogflow_cleaned_logs.count, name: LiveAgentTransfer
              - fallback}, {axisId: LiveAgentTransfer - no - dialogflow_cleaned_logs.count,
            id: LiveAgentTransfer - no - dialogflow_cleaned_logs.count, name: LiveAgentTransfer
              - no}, {axisId: LiveAgentTransfer - yes - dialogflow_cleaned_logs.count,
            id: LiveAgentTransfer - yes - dialogflow_cleaned_logs.count, name: LiveAgentTransfer
              - yes}, {axisId: NoAccount - dialogflow_cleaned_logs.count, id: NoAccount
              - dialogflow_cleaned_logs.count, name: NoAccount}, {axisId: NoAccount
              - fallback - dialogflow_cleaned_logs.count, id: NoAccount - fallback
              - dialogflow_cleaned_logs.count, name: NoAccount - fallback}, {axisId: NoAccount
              - no - dialogflow_cleaned_logs.count, id: NoAccount - no - dialogflow_cleaned_logs.count,
            name: NoAccount - no}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 100, type: linear}]
    x_axis_label: Intend Trend
    defaults_version: 1
    listen:
      Intent: dialogflow_cleaned_logs.intent_triggered
      Date: dialogflow_cleaned_logs.date_date
    row: 81
    col: 0
    width: 22
    height: 15
  - title: Deflection rate
    name: Deflection rate
    model: asha_looker_training
    explore: deflection_view
    type: looker_pie
    fields: [deflection_view.deflection_rate, deflection_view.count]
    sorts: [deflection_view.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    listen:
      Date: deflection_view.time_stamp_date
    row: 62
    col: 0
    width: 10
    height: 7
  - title: Session Distribution vs Call Deflection
    name: Session Distribution vs Call Deflection
    model: asha_looker_training
    explore: deflection_view
    type: looker_column
    fields: [deflection_view.deflection, deflection_view.count]
    sorts: [deflection_view.deflection]
    limit: 500
    query_timezone: America/Los_Angeles
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
    y_axes: [{label: Session Distinct count, orientation: left, series: [{axisId: deflection_view.count,
            id: deflection_view.count, name: Deflection View}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    listen:
      Date: deflection_view.time_stamp_date
    row: 62
    col: 10
    width: 10
    height: 7
  - title: success_rate
    name: success_rate
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.success_rate]
    filters:
      dialogflow_cleaned_logs.intent_triggered: ''
      dialogflow_cleaned_logs.success_rate: NOT NULL
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
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
    series_types: {}
    listen:
      Date: dialogflow_cleaned_logs.date_date
    row: 16
    col: 5
    width: 5
    height: 4
  - title: Average_call_duration
    name: Average_call_duration
    model: asha_looker_training
    explore: session_level_view
    type: single_value
    fields: [session_level_view.average_Session_duration]
    filters:
      session_level_view.average_Session_duration: NOT NULL
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Intent: session_level_view.entry_intent
      Date: session_level_view.date_date
    row: 12
    col: 5
    width: 5
    height: 4
  - title: Weekly Traffic_new
    name: Weekly Traffic_new
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    type: looker_column
    fields: [dialogflow_cleaned_logs.distinct_session_count, dialogflow_cleaned_logs.date_week]
    filters:
      dialogflow_cleaned_logs.intent_triggered: ''
      dialogflow_cleaned_logs.distinct_session_count: NOT NULL
    sorts: [dialogflow_cleaned_logs.date_week desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
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
    series_types: {}
    show_null_points: true
    interpolation: linear
    listen:
      Date: dialogflow_cleaned_logs.date_date
    row: 55
    col: 0
    width: 10
    height: 7
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 365 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: asha_looker_training
    explore: dialogflow_cleaned_logs
    listens_to_filters: []
    field: dialogflow_cleaned_logs.date_date
  - name: Intent
    title: Intent
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: asha_looker_training
    explore: session_level_view
    listens_to_filters: []
    field: session_level_view.entry_intent
