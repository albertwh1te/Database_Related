select EPS_P1
        from RES_COM_PFT_FCST
        where RES_ID in (
        select RES_ID
        FROM RES_REPORT_MAIN
        WHERE INNER_CODE in (
        select INNER_CODE
        FROM STK_CODE
        WHERE STOCKCODE = '000004'
        )
        AND WRITEDATE
        BETWEEN '2014-07-05'
        AND '2015-01-05')
        AND EPS_P1 is not NULL
        