connection: "de_looker_training_asha"

# include all the views
include: "/views/**/*.view"

datagroup: asha_looker_training_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: asha_looker_training_default_datagroup

explore: dialogflow_cleaned_logs {}
explore: session_level_view {}
explore: intent_cooccurances {}
explore: avg_call_duration {}
