CREATE TABLE `CarritoCompras` (
	`Id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	`IdProducto` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	`IdUsuario` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	`Cantidad` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`Id`) USING BTREE,
	INDEX `FK_Carrito_Producto` (`IdProducto`) USING BTREE,
	INDEX `FK_Carrito_Usuario` (`IdUsuario`) USING BTREE,
	CONSTRAINT `FK_Carrito_Producto` FOREIGN KEY (`IdProducto`) REFERENCES `POOGrupo4`.`Productos` (`Id`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `FK_Carrito_Usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `POOGrupo4`.`Usuarios` (`Id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=38
;
