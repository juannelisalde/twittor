SELECT 
  * 
FROM giro 
WHERE giro_id NOT IN (
  SELECT 
    giro_id
  FROM (
    SELECT 
        giro_receptor_cuenta_id, 
        max(giro_id) as giro_id 
      FROM giro 
      WHERE giro_estado_id = 1
      GROUP by giro_receptor_cuenta_id
  ) t1
);