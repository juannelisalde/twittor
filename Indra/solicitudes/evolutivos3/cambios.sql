ALTER TABLE pate_solicitud_pagos ADD (sopa_vencimiento DATE NULL, sopa_inicio_gestion DATE NULL);
ALTER TABLE pate_solicitud_pagos_log ADD (sopa_vencimiento DATE NULL, sopa_inicio_gestion DATE NULL);
ALTER TABLE pate_solicitud_pagos_carga ADD (sopa_vencimiento DATE NULL);

ALTER TABLE pate_proveedores ADD (prov_correo VARCHAR(150) NULL, prov_factura_electronica CHAR(2) NULL);

create or replace TRIGGER TRG_PATE_SOLICITUD_PAGOS_ID 
BEFORE INSERT OR UPDATE ON PATE_SOLICITUD_PAGOS 
FOR EACH ROW 
DECLARE
  FECHA DATE;
BEGIN
  IF INSERTING THEN
    :NEW.SOPA_ID := SEQ_PATE_SOLICITUD_PAGOS.NEXTVAL;
    :NEW.SOPA_FECHAADD := SYSDATE;
    
    IF TO_CHAR(SYSDATE, 'HH24') >= 13 THEN
      SELECT 
        fecha INTO FECHA 
      FROM (
        SELECT 
          TO_DATE(TO_CHAR(fecha, 'DD-MM-YYYY') || ' 08', 'DD-MM-YYYY HH24') AS fecha
        FROM SIMMER_60000_0020301 
        WHERE fecha > SYSDATE 
        AND tipo_dia = 'H' 
        ORDER BY fecha
      )
      WHERE rownum = 1;
    ELSE
      FECHA := SYSDATE;
    END IF;
        
    :NEW.SOPA_INICIO_GESTION := FECHA;
ELSIF UPDATING THEN 
  :NEW.SOPA_FECHAMOD := SYSDATE;
  
  IF :NEW.SOPA_ESTADO = 'RADICADO' AND :OLD.SOPA_FECHA_RADICADO IS NULL  THEN
    :NEW.SOPA_FECHA_RADICADO := SYSDATE;
  END IF;
END IF;
END;