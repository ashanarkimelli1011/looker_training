view: dialogflow_cleaned_logs {
  sql_table_name: `looker_training_asha.dialogflow_cleaned_logs`
    ;;

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
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
    sql: ${TABLE}.date ;;
  }

  dimension: intent_detection_confidence {
    type: number
    sql: ${TABLE}.intent_detection_confidence ;;
  }

  dimension: intent_triggered {
    type: string
    sql: ${TABLE}.intent_triggered ;;
  }

  dimension: is_fallback {
    type: yesno
    sql: ${TABLE}.isFallback ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: magnitude {
    type: number
    sql: ${TABLE}.magnitude ;;
  }

  dimension: month_number {
    type: number
    sql: ${TABLE}.month_number ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}.query_text ;;
  }

  dimension: query_text_redacted {
    type: string
    sql: ${TABLE}.query_text_redacted ;;
  }

  dimension: response_id {
    type: string
    sql: ${TABLE}.response_ID ;;
  }

  dimension: sentiment_score {
    type: number
    sql: ${TABLE}.sentiment_score ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_ID ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension_group: time_stamp {
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
    sql: ${TABLE}.time_stamp ;;
  }

  dimension: week_number {
    type: number
    sql: ${TABLE}.week_number ;;
  }

  measure: max_timestamp {
    type: max
    sql:  ${TABLE}.time_stamp ;;
  }

  measure: min_timestamp {
    type: min
    sql:  ${TABLE}.time_stamp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: distinct_session_count {
    type: count_distinct
    sql: ${session_id} ;;
  }

  measure: fallback_count {
    type: count
    filters: [is_fallback: "Yes"]
  }

  measure: percent_fallback {
    type: number
    sql: ${fallback_count}/${distinct_session_count} ;;
  }

  measure: distinct_dates_count {
    type: count_distinct
    sql: ${date_date} ;;
  }

  measure: avg_sessions_per_day {
    type: number
    sql: ${distinct_session_count}/${distinct_dates_count} ;;
    value_format: "0"
  }

  measure: avg_sentiment_score{
    type: average
    sql: ${sentiment_score} ;;
    value_format: "0.000"
  }

  measure: count_fallback_queries {
    label: "Total_Unhandled_Queries"
    type: count_distinct
    sql: ${response_id} ;;
    filters: [is_fallback: "true"]
  }

  measure: count_handled_queries {
    label: "Total_Handled_Queries"
    type: count_distinct
    sql: ${response_id} ;;
    filters: [is_fallback: "false"]
  }

  measure: success_rate {
    type: number
    sql: sum(if(${is_fallback},0,1))/${count} ;;
    value_format_name: percent_2
  }

  measure: queries_count {
    type: count_distinct
    sql: ${response_id} ;;
  }
  measure: avg_queries_per_session {
    type: number
    sql:  ${queries_count} / NULLIF(${distinct_session_count},0) ;;
    value_format: "0"
  }
}
