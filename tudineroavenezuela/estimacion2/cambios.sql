ALTER TABLE usuario ADD usuario_imagen VARCHAR(4) NULL AFTER usuario_pasarela;
ALTER TABLE usuario DROP usuario_tipo_tasa;
ALTER TABLE usuario_compra DROP usuario_compra_tipo_tasa;
ALTER TABLE usuario ADD usuario_utilidad INT NULL AFTER usuario_deuda;
ALTER TABLE usuario ADD usuario_tasa_variante BOOLEAN NOT NULL DEFAULT FALSE AFTER usuario_tasa;
ALTER TABLE usuario_compra ADD usuario_compra_utilidad_anterior INT NOT NULL AFTER usuario_compra_nuevo, ADD usuario_compra_utilidad INT NOT NULL AFTER usuario_compra_utilidad_anterior, ADD usuario_compra_utilidad_nuevo INT NOT NULL AFTER usuario_compra_utilidad;
UPDATE usuario SET usuario_utilidad = 0;
ALTER TABLE remitente ADD remitente_saldo INT NOT NULL AFTER remitente_asesor;
RENAME TABLE dinero TO remitente_compra;
ALTER TABLE remitente_compra CHANGE dinero_id remitente_compra_id BIGINT(20) NOT NULL AUTO_INCREMENT;
ALTER TABLE remitente_compra CHANGE dinero_remitente_id remitente_compra_remitente_id INT(11) NOT NULL, CHANGE dinero_monto remitente_compra_monto INT(11) NOT NULL, CHANGE dinero_descripcion remitente_compra_descripcion VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, CHANGE dinero_bono remitente_compra_bono VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL, CHANGE dinero_creacion remitente_compra_creacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE remitente_compra ADD remitente_compra_anterior INT NOT NULL AFTER remitente_compra_remitente_id;
ALTER TABLE remitente_compra ADD remitente_compra_nuevo INT NOT NULL AFTER remitente_compra_monto;
ALTER TABLE remitente_compra CHANGE remitente_compra_descripcion remitente_compra_observacion VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE remitente_compra ADD CONSTRAINT fk_remitente_compra_remitente_id FOREIGN KEY (remitente_compra_remitente_id) REFERENCES remitente(remitente_id);
ALTER TABLE usuario DROP usuario_tipo_pago;


drop table recarga;
drop table paquete;
drop table operador;

CREATE TABLE operador (
  operador_id bigint(20) AUTO_INCREMENT,
  operador_nombre VARCHAR(50) NOT NULL,
  operador_codigos VARCHAR(100) NOT NULL,
  operador_imagen VARCHAR(4) NOT NULL,
  operador_estado BOOLEAN NOT NULL DEFAULT 1,
  operador_creacion datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  operador_modificacion datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (operador_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO operador (operador_id, operador_nombre, operador_codigos, operador_imagen, operador_estado) VALUES 
(NULL, 'movistar', '220, 321', 'png', '1'), 
(NULL, 'movilnet', '222, 323', 'png', '1'), 
(NULL, 'digitel', '224, 325', 'png', '1');

CREATE TABLE paquete (
  paquete_id bigint(20) AUTO_INCREMENT,
  paquete_operador_id bigint(20) NOT NULL,
  paquete_nombre VARCHAR(50) NOT NULL,
  paquete_descripcion VARCHAR(200) NOT NULL,
  paquete_valor_pesos int NOT NULL,
  paquete_valor_bolivares int NOT NULL,
  paquete_estado BOOLEAN NOT NULL DEFAULT 1,
  paquete_creacion datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  paquete_modificacion datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (paquete_id),
  CONSTRAINT fk_paquete_operador_id FOREIGN KEY (paquete_operador_id) REFERENCES operador(operador_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO paquete (paquete_id, paquete_operador_id, paquete_nombre, paquete_descripcion, paquete_valor_pesos, paquete_valor_bolivares) VALUES 
(NULL, 1, 'todomil', 'paquete todo mil', 500, 5500),
(NULL, 1, 'todo2mil', 'paquete todo 2 mil', 1000, 51000),
(NULL, 1, 'todo5mil', 'paquete todo 5 mil', 2500, 52500),
(NULL, 1, 'todo10mil', 'paquete todo 10 mil', 5000, 55000),
(NULL, 1, 'todo20mil', 'paquete todo 20 mil', 1000, 51000),
(NULL, 2, 'todomil', 'paquete todo mil', 500, 5500), 
(NULL, 2, 'todo2mil', 'paquete todo 2 mil', 1000, 51000), 
(NULL, 2, 'todo5mil', 'paquete todo 5 mil', 2500, 52500),
(NULL, 2, 'todo10mil', 'paquete todo 10 mil', 5000, 55000),
(NULL, 2, 'todo20mil', 'paquete todo 20 mil', 1000, 51000),
(NULL, 3, 'todomil', 'paquete todo mil', 500, 5500), 
(NULL, 3, 'todo2mil', 'paquete todo 2 mil', 1000, 51000), 
(NULL, 3, 'todo5mil', 'paquete todo 5 mil', 2500, 52500),
(NULL, 3, 'todo10mil', 'paquete todo 10 mil', 5000, 55000),
(NULL, 3, 'todo20mil', 'paquete todo 20 mil', 5, 1000);

CREATE TABLE recarga (
  recarga_id bigint(20) AUTO_INCREMENT,
  recarga_paquete_id bigint(20) NOT NULL,
  recarga_usuario_id int(11) NOT NULL,
  recarga_estado_id int(11) NOT NULL,
  recarga_girador_id int(11) DEFAULT NULL,
  recarga_celular varchar(20) not NULL,
  recarga_celular_colombia varchar(20) not NULL,
  recarga_valor_pesos bigint(20) NOT NULL,
  recarga_valor_bolivares bigint(20) NOT NULL,
  recarga_observacion varchar(500) NULL,
  recarga_imagen varchar(4) DEFAULT NULL,
  recarga_creacion datetime DEFAULT CURRENT_TIMESTAMP,
  recarga_modificacion datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  recarga_fecha_asignacion datetime DEFAULT NULL,
  recarga_fecha_exitoso datetime DEFAULT NULL,
  PRIMARY KEY (recarga_id),
  CONSTRAINT fk_recarga_paquete_id FOREIGN KEY (recarga_paquete_id) REFERENCES paquete(paquete_id),
  CONSTRAINT fk_recarga_usuario_id FOREIGN KEY (recarga_usuario_id) REFERENCES usuario(usuario_id),
  CONSTRAINT fk_recarga_girador_id FOREIGN KEY (recarga_girador_id) REFERENCES usuario(usuario_id),
  CONSTRAINT fk_recarga_estado_id FOREIGN KEY (recarga_estado_id) REFERENCES giro_estado(giro_estado_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



ALTER TABLE usuario CHANGE usuario_perfil_id usuario_perfil_id INT(11) NOT NULL AFTER usuario_id;
ALTER TABLE usuario CHANGE usuario_estado_id usuario_estado_id INT(11) NOT NULL AFTER usuario_perfil_id;
ALTER TABLE usuario CHANGE usuario_usuario_id usuario_usuario_id INT(11) NOT NULL AFTER usuario_id;
ALTER TABLE usuario DROP usuario_pasarela;
ALTER TABLE usuario CHANGE usuario_tasa usuario_sobretasa DECIMAL(9,6) NOT NULL;
ALTER TABLE usuario CHANGE usuario_tasa_variante usuario_tasa_variante TINYINT(1) NOT NULL DEFAULT '0' AFTER usuario_password;
ALTER TABLE usuario ADD usuario_comision_recarga DECIMAL(9,6) NOT NULL AFTER usuario_comision;
ALTER TABLE usuario DROP INDEX fk_usuario_estado;
ALTER TABLE usuario DROP INDEX fk_usuario_perfil;

ALTER TABLE usuario ADD CONSTRAINT fk_usuario_estado FOREIGN KEY (usuario_estado_id) REFERENCES usuario_estado(usuario_estado_id);
ALTER TABLE usuario ADD CONSTRAINT fk_usuario_perfil_id FOREIGN KEY (usuario_perfil_id) REFERENCES perfil(perfil_id);

ALTER TABLE recarga ADD recarga_celular_colombia VARCHAR(20) NOT NULL AFTER recarga_celular;

ALTER TABLE giro CHANGE giro_usuario_id giro_usuario_id INT(11) NOT NULL AFTER giro_id;
ALTER TABLE giro CHANGE giro_girador_id giro_girador_id INT(11) NULL DEFAULT NULL AFTER giro_usuario_id;
ALTER TABLE giro DROP INDEX fk_giro_giro_estado;
ALTER TABLE giro DROP INDEX fk_giro_usuario;
ALTER TABLE giro DROP INDEX fk_giro_remitente;
ALTER TABLE giro ADD CONSTRAINT fk_giro_usuario_id FOREIGN KEY (giro_usuario_id) REFERENCES usuario(usuario_id);
ALTER TABLE giro ADD CONSTRAINT fk_giro_girador_id FOREIGN KEY (giro_girador_id) REFERENCES usuario(usuario_id);
ALTER TABLE giro ADD CONSTRAINT fk_giro_remitente_id FOREIGN KEY (giro_remitente_id) REFERENCES remitente(remitente_id);
ALTER TABLE giro ADD CONSTRAINT fk_giro_receptor_cuenta_id FOREIGN KEY (giro_receptor_cuenta_id) REFERENCES receptor_cuenta(receptor_cuenta_id);
ALTER TABLE giro ADD CONSTRAINT fk_giro_estado_id FOREIGN KEY (giro_estado_id) REFERENCES giro_estado(giro_estado_id);
ALTER TABLE giro DROP giro_tasa_admin, DROP giro_tasa_pdv, DROP giro_tasa_sugerida, DROP giro_valor_digitado;
ALTER TABLE giro CHANGE giro_tasa_digitada giro_tasa DECIMAL(7,6) NOT NULL;


ALTER TABLE usuario_banco_rango ADD usuario_banco_tipo BOOLEAN NOT NULL COMMENT '0:giros, 1:recargas' AFTER usuario_banco_fecha_fin;

