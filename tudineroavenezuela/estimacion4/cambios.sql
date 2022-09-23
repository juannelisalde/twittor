ALTER TABLE `usuario` ADD `usuario_moneda` ENUM('bss', 'usd') NOT NULL AFTER `usuario_password`;

ALTER TABLE `usuario_compra` ADD `usuario_compra_tipo` VARCHAR(10) NOT NULL AFTER `usuario_compra_tipo_tasa`;
ALTER TABLE `usuario_compra` CHANGE `usuario_compra_usuario_id` `usuario_compra_usuario_id` INT(11) NOT NULL AFTER `usuario_compra_id`;
ALTER TABLE `usuario_compra` CHANGE `usuario_compra_tasa` `usuario_compra_tasa` DECIMAL(5,2) NOT NULL AFTER `usuario_compra_nuevo`;
ALTER TABLE `usuario_compra` CHANGE `usuario_compra_saldo` `usuario_compra_saldo` INT(11) NOT NULL AFTER `usuario_compra_anterior`;

-- crear registro de la tasa 

delete from giro where giro_usuario_id in (select usuario_id from usuario where usuario_usuario_id = 3); -- 729
delete from giro where giro_receptor_id in (select receptor_id from receptor where receptor_usuario_id in  (select usuario_id from usuario where usuario_usuario_id = 3)); -- 186
delete from receptor where receptor_usuario_id in (select usuario_id from usuario where usuario_usuario_id = 3); -- 526
delete from giro where giro_remitente_id in (select remitente_id from remitente where remitente_usuario_id in  (select usuario_id from usuario where usuario_usuario_id = 3)); -- 214
delete from remitente where remitente_usuario_id in (select usuario_id from usuario where usuario_usuario_id = 3); -- 430
delete from usuario_compra where usuario_compra_usuario_id in (select usuario_id from usuario where usuario_usuario_id = 3); -- 842
delete from usuario where usuario_usuario_id = 3; -- 137

delete from giro where giro_usuario_id =3; -- 40
delete from giro where giro_receptor_id in (select receptor_id from receptor where receptor_usuario_id =3); -- 0
delete from receptor where receptor_usuario_id =3; -- 40
delete from giro where giro_remitente_id in (select remitente_id from remitente where remitente_usuario_id =3); -- 2
delete from remitente where remitente_usuario_id =3; -- 14
delete from usuario_compra where usuario_compra_usuario_id =3; -- 40
delete from usuario where usuario_usuario_id = 3; -- 137
delete from usuario where usuario_id = 3; -- 1