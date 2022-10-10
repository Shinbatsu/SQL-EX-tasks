﻿WITH _ AS(SELECT row_number() over( ORDER BY b_datetime, b_q_id, b_v_id) rn, count(*) over() AS rc, b_datetime, b_q_id, b_v_id, b_vol FROM utB), _2 AS (SELECT R, b_datetime, b_q_id, b_v_id, b_vol, cast(b_vol AS float) AS Pi FROM _ WHERE R = 1 UNION ALL SELECT _2.R + 1, _.b_datetime, _.b_q_id, _.b_v_id, _.b_vol, CASE WHEN (_2.R + 1) % 2 = 0 THEN _2.Pi / cast(_. b_vol AS float) ELSE _2.Pi * cast(_. b_vol AS float) END AS Pi FROM _2 JOIN _ ON _.rn = (_2.rn + 1) WHERE _2.rn <= rc) SELECT b_datetime, b_q_id, b_v_id, b_vol, cast(Pi AS decimal(18, 8)) FROM _2 OPTION (MAXRECURSION 300);