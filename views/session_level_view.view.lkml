view: session_level_view {
  sql_table_name: `qp-qai-training-1-2021-05.looker_training_asha.session_level_view`
    ;;

  dimension: conversation_length_in_minutes {
    type: number
    sql: ${TABLE}.conversation_length_in_minutes ;;
  }

  dimension: conversation_length_in_seconds {
    type: number
    sql: ${TABLE}.conversation_length_in_seconds ;;
  }

  dimension: count_of_msg {
    type: number
    sql: ${TABLE}.count_of_msg ;;
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

  dimension: entry_intent {
    type: string
    sql: ${TABLE}.entry_intent ;;
  }

  dimension: exit_intent {
    type: string
    sql: ${TABLE}.exit_intent ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: is_fallback_flag {
    type: yesno
    sql: ${TABLE}.IsFallbackFlag ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: sentiment_score {
    type: number
    sql: ${TABLE}.sentiment_score ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_ID ;;
  }

  dimension:  duration_grouped{
    sql: CASE WHEN ${conversation_length_in_seconds}<60 THEN "<1 min"
          WHEN ${conversation_length_in_seconds}>=60 and ${conversation_length_in_seconds}<180 THEN "1-3 min"
          WHEN ${conversation_length_in_seconds}>=180 and ${conversation_length_in_seconds}<300 THEN "3-5 min"
          WHEN ${conversation_length_in_seconds}>=300 and ${conversation_length_in_seconds}<420 THEN "5-7 min"
          ELSE ">7 min"
          END ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
