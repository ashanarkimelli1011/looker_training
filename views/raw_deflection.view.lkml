view: raw_deflection {
  sql_table_name: `qp-qai-training-1-2021-05.looker_training_asha.raw_deflection`
    ;;

  dimension: agent_transfer {
    type: number
    sql: ${TABLE}.agentTransfer ;;
  }

  dimension: is_fallback {
    type: number
    sql: ${TABLE}.isFallback ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
