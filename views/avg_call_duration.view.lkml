view: avg_call_duration {
  derived_table: {
    sql:
    select avg(dialogflow_cleaned_logs_duration) from (
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
}
