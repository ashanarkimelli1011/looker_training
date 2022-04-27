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

  dimension: IsTransferred {
    type: number
    sql: ${TABLE}.IsTransferred ;;
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
          order_by_field: duration_grouped_ordered
  }

  dimension:  duration_grouped_ordered{
    sql: CASE WHEN ${conversation_length_in_seconds}<60 THEN 1
          WHEN ${conversation_length_in_seconds}>=60 and ${conversation_length_in_seconds}<180 THEN 2
          WHEN ${conversation_length_in_seconds}>=180 and ${conversation_length_in_seconds}<300 THEN 3
          WHEN ${conversation_length_in_seconds}>=300 and ${conversation_length_in_seconds}<420 THEN 4
          ELSE 5
          END ;;
  }

  measure: avg_sentiment_score{
    type: average
    sql: ${sentiment_score} ;;
    value_format: "0.000"
  }

  measure: total_queries {
    type: sum
    sql: ${count_of_msg};;
    value_format: "0"
  }

  dimension: deflection_rate {
    case: {
      when: {
        sql: ${TABLE}.IsTransferred ="0" and ${TABLE}.NotDeflectedFlag =0;;
        label: "Fully Deflected"
      }
      when: {
        sql: ${TABLE}.IsTransferred ="1" and ${TABLE}.NotDeflectedFlag =0;;
        label: "Partially Deflected"
      }

      when: {
        sql: ${TABLE}.NotDeflectedFlag =2;;
        label: "Not Deflected"
      }

    }
  }

  dimension: deflection {
    case: {
      when: {
        sql: ${TABLE}.IsTransferred ="0" and ${TABLE}.NotDeflectedFlag =0 and IsFallbackFlag="0";;
        label: "Number of sessions that were successfully handled with bot end to end"
      }
      when: {
        sql: ${TABLE}.IsTransferred ="0" and ${TABLE}.NotDeflectedFlag =0 and IsFallbackFlag="1";;
        label: "Handled by the bot/had at least one query unanswered/not transferred to live agent"
      }
      when: {
        sql: ${TABLE}.IsTransferred ="1" and ${TABLE}.NotDeflectedFlag =0;;
        label: "Transferred to live agent/has at least one fallback query/i.e.bot not able to answer"
      }

      when: {
        sql: ${TABLE}.NotDeflectedFlag =2;;
        label: "Transferred to live agent as per the expected flow but had not fallback query"
      }

    }
  }

  measure: distinct_session_count {
    type: count_distinct
    sql: ${session_id} ;;
  }
  measure: count {
    type: count
    drill_fields: []
  }
}
