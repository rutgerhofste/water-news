SELECT 
   FLOOR(CAST(DATE AS NUMERIC)/1000000) AS date,
   REGEXP_EXTRACT(Location,r'^(?:[^#]*#){0}([^#]*)') AS Location_type,
   REGEXP_EXTRACT(Location,r'^(?:[^#]*#){1}([^#]*)') AS Location_fullname,
   REGEXP_EXTRACT(Location,r'^(?:[^#]*#){2}([^#]*)') AS Location_countrycode,
   COUNT(*) AS Article_Numbers
FROM
   ( SELECT * FROM `gdelt-bq.gdeltv2.gkg_partitioned`,
      UNNEST(SPLIT(locations,';')) AS location
    WHERE
      DATE>20180820000000 AND DATE < 20180822000000 AND locations is not Null 
      AND Themes LIKE '%REFUGEE%' AND (location LIKE '%#US%' ) )
GROUP BY
   date,
   location
ORDER BY
   date, 
   Article_Numbers DESC
