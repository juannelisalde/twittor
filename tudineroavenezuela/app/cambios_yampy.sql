ALTER TABLE `remitente_compra` ADD `remitente_compra_remitente_id_recibe` INT NULL AFTER `remitente_compra_remitente_id`;


ALTER TABLE remitente_compra
ADD CONSTRAINT fk_remitente_compra_remitente_id_recibe
FOREIGN KEY (remitente_compra_remitente_id_recibe) REFERENCES remitente(remitente_id);