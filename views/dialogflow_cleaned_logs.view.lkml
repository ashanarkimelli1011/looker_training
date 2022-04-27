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
    sql: IFNULL(${TABLE}.sentiment_score, 0) ;;
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

  dimension:  grouping_of_hours{
    sql: CASE WHEN extract(hour from ${time_stamp_raw})>=00 and extract(hour from ${time_stamp_raw})<02 THEN "12am-2am"
          WHEN extract(hour from ${time_stamp_raw})>=02 and extract(hour from ${time_stamp_raw})<04 THEN "2am-4am"
          WHEN extract(hour from ${time_stamp_raw})>=04 and extract(hour from ${time_stamp_raw})<06 THEN "4am-6am"
          WHEN extract(hour from ${time_stamp_raw})>=06 and extract(hour from ${time_stamp_raw})<08 THEN "6am-8am"
          WHEN extract(hour from ${time_stamp_raw})>=08 and extract(hour from ${time_stamp_raw})<10 THEN "8am-10am"
          WHEN extract(hour from ${time_stamp_raw})>=10 and extract(hour from ${time_stamp_raw})<12 THEN "10am-12pm"
          WHEN extract(hour from ${time_stamp_raw})>=12 and extract(hour from ${time_stamp_raw})<14 THEN "12pm-2pm"
          WHEN extract(hour from ${time_stamp_raw})>=14 and extract(hour from ${time_stamp_raw})<16 THEN "2pm-4pm"
          WHEN extract(hour from ${time_stamp_raw})>=16 and extract(hour from ${time_stamp_raw})<18 THEN "4pm-6pm"
          WHEN extract(hour from ${time_stamp_raw})>=18 and extract(hour from ${time_stamp_raw})<20 THEN "6pm-8pm"
          WHEN extract(hour from ${time_stamp_raw})>=20 and extract(hour from ${time_stamp_raw})<22 THEN "8pm-10pm"
          ELSE "10pm-12am"
          END ;;
  }

  dimension:  grouping_of_hourly_basis{
    type: string
    sql: CASE WHEN extract(hour from ${time_stamp_raw})>=00 and extract(hour from ${time_stamp_raw})<01 THEN "12am-1am"
          WHEN extract(hour from ${time_stamp_raw})>=01 and extract(hour from ${time_stamp_raw})<02 THEN "1am-2am"
          WHEN extract(hour from ${time_stamp_raw})>=02 and extract(hour from ${time_stamp_raw})<03 THEN "2am-3am"
          WHEN extract(hour from ${time_stamp_raw})>=03 and extract(hour from ${time_stamp_raw})<04 THEN "3am-4am"
          WHEN extract(hour from ${time_stamp_raw})>=04 and extract(hour from ${time_stamp_raw})<05 THEN "4am-5am"
          WHEN extract(hour from ${time_stamp_raw})>=05 and extract(hour from ${time_stamp_raw})<06 THEN "5am-6am"
          WHEN extract(hour from ${time_stamp_raw})>=06 and extract(hour from ${time_stamp_raw})<07 THEN "6am-7am"
          WHEN extract(hour from ${time_stamp_raw})>=07 and extract(hour from ${time_stamp_raw})<08 THEN "7am-8am"
          WHEN extract(hour from ${time_stamp_raw})>=08 and extract(hour from ${time_stamp_raw})<09 THEN "8am-9am"
          WHEN extract(hour from ${time_stamp_raw})>=09 and extract(hour from ${time_stamp_raw})<10 THEN "9am-10am"
          WHEN extract(hour from ${time_stamp_raw})>=10 and extract(hour from ${time_stamp_raw})<11 THEN "10am-11am"
          WHEN extract(hour from ${time_stamp_raw})>=11 and extract(hour from ${time_stamp_raw})<12 THEN "11am-12pm"
          WHEN extract(hour from ${time_stamp_raw})>=12 and extract(hour from ${time_stamp_raw})<13 THEN "12pm-1pm"
          WHEN extract(hour from ${time_stamp_raw})>=13 and extract(hour from ${time_stamp_raw})<14 THEN "1pm-2pm"
          WHEN extract(hour from ${time_stamp_raw})>=14 and extract(hour from ${time_stamp_raw})<15 THEN "2pm-3pm"
          WHEN extract(hour from ${time_stamp_raw})>=15 and extract(hour from ${time_stamp_raw})<16 THEN "3pm-4pm"
          WHEN extract(hour from ${time_stamp_raw})>=16 and extract(hour from ${time_stamp_raw})<17 THEN "4pm-5pm"
          WHEN extract(hour from ${time_stamp_raw})>=17 and extract(hour from ${time_stamp_raw})<18 THEN "5pm-6pm"
          WHEN extract(hour from ${time_stamp_raw})>=18 and extract(hour from ${time_stamp_raw})<19 THEN "6pm-7pm"
          WHEN extract(hour from ${time_stamp_raw})>=19 and extract(hour from ${time_stamp_raw})<20 THEN "7pm-8pm"
          WHEN extract(hour from ${time_stamp_raw})>=20 and extract(hour from ${time_stamp_raw})<21 THEN "8pm-9pm"
          WHEN extract(hour from ${time_stamp_raw})>=21 and extract(hour from ${time_stamp_raw})<22 THEN "9pm-10pm"
          WHEN extract(hour from ${time_stamp_raw})>=22 and extract(hour from ${time_stamp_raw})<23 THEN "10pm-11pm"
          WHEN extract(hour from ${time_stamp_raw})>=23 and extract(hour from ${time_stamp_raw})<24 THEN "11pm-12am"
          END ;;
          order_by_field: time_stamp_hour
  }

  dimension: time_stamp_hour{
    type: number
    sql: extract(hour from ${time_stamp_raw}) ;;
  }

  dimension: sentiment_bucketing{
    sql: CASE WHEN ${magnitude} > 3 and ${sentiment_score} between 0.25 and 1 THEN '1. Positive'
          WHEN ${magnitude} <= 3 and ${sentiment_score} between 0.25 and 1 THEN '2. Partially Positive'
          WHEN ${magnitude} <= 3 and ${sentiment_score} between -1 and -0.25 THEN '4. Partially Negative'
          WHEN ${magnitude} > 3 and ${sentiment_score} between -1 and -0.25 THEN '5. Negative'
          ELSE "3. Neutral"
          END ;;
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
    filters: {
      field: is_fallback
      value: "Yes"
    }
  }

  measure: count_handled_queries {
    label: "Total_Handled_Queries"
    type: count_distinct
    sql: ${response_id} ;;
    filters: {
      field: is_fallback
      value: "No"
    }
  }

  measure: total_queries {
    type: number
    sql: ${count_handled_queries} + ${count_fallback_queries} ;;
    value_format_name: percent_0

  }

  measure: success_rate {
    type: number
    sql: sum(if(${is_fallback},0,1))/${count} ;;
    value_format_name: percent_0

  }

  measure: queries_count {
    type: count_distinct
    sql: ${response_id} ;;
  }

  measure: duration {
    type: number
    sql: TIMESTAMP_DIFF(max(${time_stamp_raw}), min(${time_stamp_raw}), SECOND) ;;
    group_label: "${session_id}"
  }

  measure: avg_queries_per_session {
    type: number
    sql:  ${queries_count} / NULLIF(${distinct_session_count},0) ;;
    value_format: "0"
  }
}
