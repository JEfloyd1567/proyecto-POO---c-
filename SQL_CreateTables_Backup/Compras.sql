CREATE TABLE `Compras` (
	`Id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	`IdCliente` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	`IdProducto` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	`MetodoPago` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci',
	`Cantidad` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Precio` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Fecha` DATETIME NOT NULL,
	PRIMARY KEY (`Id`) USING BTREE,
	INDEX `FK_Compras_Producto` (`IdProducto`) USING BTREE,
	INDEX `FK_Compras_Usuarios` (`IdCliente`) USING BTREE,
	CONSTRAINT `FK_Compras_Producto` FOREIGN KEY (`IdProducto`) REFERENCES `POOGrupo4`.`Productos` (`Id`) ON UPDATE RESTRICT ON DELETE RESTRICT,
	CONSTRAINT `FK_Compras_Usuarios` FOREIGN KEY (`IdCliente`) REFERENCES `POOGrupo4`.`Usuarios` (`Id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=19
;
