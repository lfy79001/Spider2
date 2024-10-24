--- looking at both the board and the value parameters for our event

SELECT param
FROM `firebase-public-project.analytics_153293282.events_20180915`,
UNNEST(event_params) AS param
WHERE event_name = "level_complete_quickplay"
AND (param.key = "value" OR param.key = "board")