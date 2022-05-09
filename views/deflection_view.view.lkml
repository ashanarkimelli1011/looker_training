view: deflection_view {
  sql_table_name: `qp-qai-training-1-2021-05.looker_training_asha.deflection_view`
    ;;

  dimension: agent_transfer {
    type: number
    sql: ${TABLE}.agentTransfer ;;
  }

  dimension: is_fallback {
    type: number
    sql: ${TABLE}.isFallback ;;
  }

  dimension: deflection_rate {
    type: string
    sql: case
    when ${is_fallback}=0 and ${agent_transfer}=0 then "Fully Deflected"
    when ${is_fallback}=0 and ${agent_transfer}=1 then "Not Deflected"
    else "Partially Deflected"
    end
    ;;
  }

  dimension: deflection {
    type: string
    sql: case
          when ${is_fallback}=0 and ${agent_transfer}=0 then "Successfully handled with with bot end to end"
          when ${is_fallback}=0 and ${agent_transfer}=1 then "Transferred to live agent as per the expected flow but had not fallback query"
          when ${is_fallback}=1 and ${agent_transfer}=1 then "Transferred to live agent and has at least one fallback query"
          else "Partially handled by the bot and had at least one query unanswered but not transferred to live agent"
          end
          ;;
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
