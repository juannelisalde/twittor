ALTER TABLE mensaje ADD mensaje_tipo ENUM('msg-yampy','msg-tudinero') NOT NULL DEFAULT 'msg-tudinero' AFTER mensaje_estado;

ALTER TABLE usuario CHANGE usuario_codigo usuario_codigo INT(6) NULL DEFAULT NULL;

ALTER TABLE receptor CHANGE receptor_tipo_cuenta receptor_alerta VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;

INSERT INTO giro_estado (giro_estado_id, giro_estado) VALUES (NULL, 'En alerta');

CREATE TABLE giro_descuento (
  giro_descuento_id BIGINT(20) AUTO_INCREMENT,
  giro_descuento_porcentaje DECIMAL(5,2) NOT NULL,
  giro_descuento_inicio DATETIME,
  giro_descuento_fin DATETIME,
  giro_descuento_inicial BIGINT(20),
  giro_descuento_final BIGINT(20),
  giro_descuento_creacion datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  giro_descuento_modificacion datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (giro_descuento_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE operador ADD operador_codigos VARCHAR(100) NOT NULL AFTER operador_imagen;


CREATE TABLE usuario_departamento (
  usuario_departamento_id BIGINT(20) AUTO_INCREMENT,
  usuario_departamento VARCHAR(20) NOT NULL,
  usuario_departamento_creacion datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  usuario_departamento_modificacion datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (usuario_departamento_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO usuario_departamento (usuario_departamento) VALUES('cundinamarca');
INSERT INTO usuario_departamento (usuario_departamento) VALUES('tolima');

CREATE TABLE usuario_ciudad (
  usuario_ciudad_id BIGINT(20) AUTO_INCREMENT,
  usuario_ciudad_departamento_id BIGINT(20) NOT NULL,
  usuario_ciudad_localidad BOOLEAN DEFAULT FALSE NOT NULL,
  usuario_ciudad VARCHAR(20) NOT NULL,
  usuario_ciudad_creacion datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  usuario_ciudad_modificacion datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (usuario_ciudad_id),
  CONSTRAINT fk_usuario_ciudad_departamento_id FOREIGN KEY (usuario_ciudad_departamento_id) REFERENCES usuario_departamento(usuario_departamento_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO usuario_ciudad (usuario_ciudad_departamento_id, usuario_ciudad_localidad, usuario_ciudad) VALUES(1, true, 'bogota');
INSERT INTO usuario_ciudad (usuario_ciudad_departamento_id, usuario_ciudad_localidad, usuario_ciudad) VALUES(2, false, 'ibague');

CREATE TABLE usuario_localidad (
  usuario_localidad_id BIGINT(20) AUTO_INCREMENT,
  usuario_localidad_ciudad_id BIGINT(20) NOT NULL,
  usuario_localidad VARCHAR(20) NOT NULL,
  usuario_localidad_creacion datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  usuario_localidad_modificacion datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (usuario_localidad_id),
  CONSTRAINT fk_usuario_localidad_ciudad_id FOREIGN KEY (usuario_localidad_ciudad_id) REFERENCES usuario_ciudad(usuario_ciudad_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO usuario_localidad (usuario_localidad_ciudad_id, usuario_localidad) VALUES(1, 'kennedy');

ALTER TABLE usuario ADD usuario_servicio_id BIGINT(20) NULL AFTER usuario_estado_id, ADD usuario_asesor_id VARCHAR(50) NULL AFTER usuario_servicio_id, ADD usuario_localidad_id BIGINT(20) NULL AFTER usuario_asesor_id;

ALTER TABLE usuario ADD CONSTRAINT fk_usuario_asesor_id FOREIGN KEY (usuario_asesor_id) REFERENCES usuario(usuario_id);
ALTER TABLE usuario ADD CONSTRAINT fk_usuario_ciudad_id FOREIGN KEY (usuario_ciudad_id) REFERENCES usuario_ciudad(usuario_ciudad_id);

ALTER TABLE `usuario` ADD `usuario_direccion` VARCHAR(100) NULL AFTER `usuario_imagen`;
