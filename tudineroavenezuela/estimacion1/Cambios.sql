INSERT INTO giro_estado (giro_estado_id, giro_estado) VALUES (NULL, 'Rechazado');

DROP EVENT setStatusMonth ;

CREATE EVENT setStatusMonth 
ON SCHEDULE 
  EVERY 1 DAY
  STARTS '2020-02-17 1:00:00'
COMMENT 'modifica el estado de los giros que llevan mas de un mes'
DO 
  UPDATE giros.giro 
  SET giro_estado_id = 10 
  WHERE DATEDIFF(now(), giro_creacion) > 30  
  AND giro_estado_id in (2,5);
  
SET GLOBAL event_scheduler = ON;

ALTER TABLE usuario ADD usuario_condiciones VARCHAR(500) NULL AFTER usuario_deuda;

CREATE TABLE compra_bolivares (
  compra_bolivares_id bigint(20) AUTO_INCREMENT,
  compra_bolivares_banco int(11) NOT NULL,
  compra_bolivares_inicial bigint(20) NOT NULL,
  compra_bolivares_saldo bigint(20) NOT NULL,
  compra_bolivares_final bigint(20) NOT NULL,
  compra_bolivares_observacion varchar(200) NOT NULL,
  compra_bolivares_creacion datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (compra_bolivares_id),
  CONSTRAINT fk_compra_bolivares_banco FOREIGN KEY (compra_bolivares_banco) REFERENCES banco(banco_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

