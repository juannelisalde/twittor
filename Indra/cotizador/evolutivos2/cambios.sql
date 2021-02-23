ALTER TABLE ctof_ofertas ADD ofer_evaluacion_precio VARCHAR2(500);
UPDATE CTOF_OFERTAS SET OFER_EVALUACION_PRECIO = ' '
ALTER TABLE ctof_ofertas MODIFY ( ofer_evaluacion_precio NOT NULL);