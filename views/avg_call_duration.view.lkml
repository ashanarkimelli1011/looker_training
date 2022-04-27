view: avg_call_duration {
  derived_table: {
    sql:
    select avg(dialogflow_cleaned_logs_duration) as duration from (
SELECT
    dialogflow_cleaned_logs.session_ID  AS dialogflow_cleaned_logs_session_id,
        TIMESTAMP_DIFF(max(time_stamp), min(time_stamp), SECOND) AS dialogflow_cleaned_logs_duration
FROM `looker_training_asha.dialogflow_cleaned_logs`
     AS dialogflow_cleaned_logs
GROUP BY
   1
ORDER BY
   2 DESC
) ;;
}


dimension: average_call_duration {
  type: string
  sql: (${TABLE}.duration/86400.0) ;;
  value_format: "[mm]\" m \"ss\" s\""
}
}
