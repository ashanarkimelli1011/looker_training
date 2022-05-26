connection: "de_looker_training_asha"

# include all the views
include: "/views/**/*.view"

datagroup: asha_looker_training_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: asha_looker_training_default_datagroup

explore: dialogflow_cleaned_logs {
  join: deflect {
    type: left_outer
    relationship: many_to_one
    sql_on: ${dialogflow_cleaned_logs.session_id}=${deflect.session_id};;

  }
}
explore: session_level_view {}
explore: intent_cooccurances {}
explore: avg_call_duration {}
explore: raw_deflection {}
explore: deflection_view {}
