-- Assuming metal_bands table is already imported with columns 'origin' and 'nb_fans'

SELECT origin, SUM(nb_fans) as total_fans
FROM metal_bands
GROUP BY origin
ORDER BY total_fans DESC;
