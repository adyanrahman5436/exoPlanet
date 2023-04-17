USE test;

SELECT AVG(sy_snum)
FROM exop;

SELECT disc_facility, COUNT(disc_facility), COUNT(disc_facility) * 100 / (SELECT COUNT(disc_facility) FROM exop) AS x
FROM exop
WHERE disc_facility IS NOT NULL
GROUP BY disc_facility
ORDER BY x DESC;

SELECT discoverymethod, COUNT(discoverymethod), COUNT(discoverymethod) * 100 / (SELECT COUNT(discoverymethod) FROM exop) AS x
FROM exop
GROUP BY discoverymethod
ORDER BY x DESC;

SELECT AVG(sy_pnum)
FROM exop;

SELECT MAX(sy_pnum), pl_name
FROM exop;

SELECT AVG(pl_bmassj) FROM exop
WHERE pl_bmassj IS NOT NULL; 

