SELECT
  UNIT_NET_CHNG_PCT,
  INNER_CODE,
  GROUP_CONCAT(UNIT_NET_CHNG_PCT, '|')
#   UNIT_NET_CHNG_PCT chg_pct
FROM ANA_FND_NAV_CALC
WHERE ISVALID = 1
      AND INNER_CODE = 102000016
      AND TRADEDATE <= '20170101'
      AND tradedate > date_sub('20170101', INTERVAL 1 MONTH)
      AND UNIT_NET_CHNG_PCT IS NOT NULL
# GROUP BY inner_CODE
ORDER BY TRADEDATE DESC
